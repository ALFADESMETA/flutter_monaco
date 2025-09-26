import 'dart:async';
import 'dart:js_interop';
import 'dart:ui_web' as ui_web;
import 'package:flutter/widgets.dart';
import 'package:web/web.dart' as web;
import '../../models/editor_options.dart';
import '../../models/monaco_enums.dart';
import '../../core/monaco_controller.dart';
import '../monaco_platform_interface.dart';

// JS interop for Monaco Editor
@JS('monaco.editor')
external JSMonacoEditor get monacoEditor;

@JS('monaco')
external JSObject? get monaco;

@JS('require')
external void require(JSArray paths, JSFunction callback);

extension type JSMonacoEditor(JSObject _) implements JSObject {
  external JSMonacoEditorInstance create(web.HTMLElement container, JSObject options);
}

extension type JSMonacoEditorInstance(JSObject _) implements JSObject {
  external JSMonacoModel getModel();
  external void dispose();
  external void setValue(String value);
  external String getValue();
  external void setSelection(JSObject selection);
}

extension type JSMonacoModel(JSObject _) implements JSObject {
  external void onDidChangeContent(JSFunction callback);
  external String getValue();
}

/// Web implementation of Monaco Editor using JS interop
class MonacoWeb implements MonacoPlatformInterface {
  static bool _isMonacoLoaded = false;
  static Completer<void>? _monacoLoadCompleter;

  @override
  Future<void> initialize() async {
    // Check if Monaco actually exists in the browser (not just our flag)
    final monacoExists = monaco != null;
    
    // Reset state if hot reload happened (flag says loaded but Monaco is gone)
    if (_isMonacoLoaded && !monacoExists) {
      _isMonacoLoaded = false;
      _monacoLoadCompleter = null;
    }
    
    if (_isMonacoLoaded && monacoExists) return;
    
    await _loadMonacoEditor();
    _isMonacoLoaded = true;
  }

  Future<void> _loadMonacoEditor() async {
    // Create new completer if needed
    _monacoLoadCompleter ??= Completer<void>();
    
    if (_monacoLoadCompleter!.isCompleted) return;

    try {
      // If Monaco already loaded, just complete
      if (monaco != null) {
        if (!_monacoLoadCompleter!.isCompleted) {
          _monacoLoadCompleter!.complete();
        }
        return;
      }

      // Check if Monaco scripts already in page
      final scriptsExist = web.document.querySelector('script[src*="monaco-editor"]') != null;
      
      if (!scriptsExist) {
        // Create require config
        final configScript = web.document.createElement('script') as web.HTMLScriptElement;
        configScript.text = '''
          var require = { 
            paths: { 
              'vs': 'https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.45.0/min/vs' 
            } 
          };
        ''';
        web.document.head!.appendChild(configScript);

        // Load Monaco loader
        final loaderScript = web.document.createElement('script') as web.HTMLScriptElement;
        loaderScript.src = 'https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.45.0/min/vs/loader.js';
        
        final loaderCompleter = Completer<void>();
        loaderScript.onLoad.listen((_) => loaderCompleter.complete());
        loaderScript.onError.listen((_) => loaderCompleter.completeError('Failed to load Monaco'));
        
        web.document.head!.appendChild(loaderScript);
        await loaderCompleter.future;
      }

      // Check if require exists before calling it (hot reload safety)
      try {
        final editorCompleter = Completer<void>();
        require(
          ['vs/editor/editor.main'].jsify() as JSArray,
          (() => editorCompleter.complete()).toJS,
        );
        await editorCompleter.future;
      } catch (e) {
        // require doesn't exist (hot reload wiped it), just complete
        debugPrint('[Monaco] require not available, completing anyway: $e');
      }
      
      if (!_monacoLoadCompleter!.isCompleted) {
        _monacoLoadCompleter!.complete();
      }
      
    } catch (e) {
      debugPrint('[Monaco] Load error: $e');
      if (!_monacoLoadCompleter!.isCompleted) {
        _monacoLoadCompleter!.completeError(e);
      }
      rethrow;
    }
  }

  @override
  Widget createEditor({
    required MonacoController controller,
    required EditorOptions options,
  }) {
    return MonacoWebWidget(
      controller: controller,
      options: options,
    );
  }

  @override
  Future<void> dispose() async {}
}

/// Web-specific Monaco Editor widget
class MonacoWebWidget extends StatefulWidget {
  final MonacoController? controller;
  final EditorOptions options;

  const MonacoWebWidget({
    super.key,
    this.controller,
    required this.options,
  });

  @override
  State<MonacoWebWidget> createState() => _MonacoWebWidgetState();
}

class _MonacoWebWidgetState extends State<MonacoWebWidget> {
  final String _viewType = 'monaco-editor-${DateTime.now().millisecondsSinceEpoch}';
  JSMonacoEditorInstance? _editor;
  bool _isRegistered = false;

  @override
  void initState() {
    super.initState();
    _registerViewFactory();
  }

  void _registerViewFactory() {
    if (_isRegistered) return;

    try {
      // Register the view factory for HtmlElementView
      ui_web.platformViewRegistry.registerViewFactory(
        _viewType,
        (int viewId) {
          // Create container that respects parent size
          final container = web.document.createElement('div') as web.HTMLDivElement;
          container.id = 'monaco-container-$viewId';
          container.style.width = '100%';
          container.style.height = '100%';
          container.style.position = 'relative';
          container.style.overflow = 'hidden';
          
          // Initialize Monaco after a brief delay to ensure DOM is ready
          Future.delayed(const Duration(milliseconds: 100), () {
            if (mounted) {
              _createEditor(container);
            }
          });
          
          return container;
        },
      );
      
      _isRegistered = true;
    } catch (e) {
      debugPrint('[Monaco] Error registering view factory: $e');
    }
  }

  void _createEditor(web.HTMLDivElement container) {
    try {
      final options = {
        'value': widget.options.initialValue ?? '// Monaco Editor for Web\nconsole.log("Hello from Monaco!");',
        'language': widget.options.language.id,
        'theme': _getThemeId(widget.options.theme),
        'automaticLayout': true,
        'minimap': {'enabled': widget.options.minimap}.jsify(),
        'fontSize': widget.options.fontSize,
        'lineNumbers': widget.options.lineNumbers ? 'on' : 'off',
        'wordWrap': widget.options.wordWrap ? 'on' : 'off',
        'readOnly': widget.options.readOnly,
        'scrollBeyondLastLine': false,
        'renderLineHighlight': 'none',
        'hideCursorInOverviewRuler': true,
        'overviewRulerBorder': false,
      }.jsify() as JSObject;

      _editor = monacoEditor.create(container, options);
      
      // Clear initial selection
      final model = _editor!.getModel();
      _editor!.setSelection(const {
        'startLineNumber': 1,
        'startColumn': 1,
        'endLineNumber': 1,
        'endColumn': 1,
      }.jsify() as JSObject);
      
      _connectController();
    } catch (e) {
      debugPrint('Error creating Monaco editor: $e');
    }
  }

  String _getThemeId(MonacoTheme theme) {
    return switch (theme) {
      MonacoTheme.vs => 'vs',
      MonacoTheme.vsDark => 'vs-dark',
      MonacoTheme.hcLight => 'hc-light',
      MonacoTheme.hcBlack => 'hc-black',
    };
  }

  void _connectController() {
    if (_editor == null) return;

    final model = _editor!.getModel();
    
    // Listen to Monaco's content changes
    model.onDidChangeContent((() {
      if (mounted) {
        debugPrint('[Monaco Web] Content changed');
      }
    }).toJS);
  }

  @override
  Widget build(BuildContext context) {
    // Return HtmlElementView that respects parent container size
    return HtmlElementView(
      viewType: _viewType,
    );
  }

  @override
  void dispose() {
    _editor?.dispose();
    super.dispose();
  }
}