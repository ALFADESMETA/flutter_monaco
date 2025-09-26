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
    final monacoExists = monaco != null;
    
    if (_isMonacoLoaded && !monacoExists) {
      _isMonacoLoaded = false;
      _monacoLoadCompleter = null;
    }
    
    if (_isMonacoLoaded && monacoExists) return;
    
    await _loadMonacoEditor();
    _isMonacoLoaded = true;
  }

  Future<void> _loadMonacoEditor() async {
    _monacoLoadCompleter ??= Completer<void>();
    
    if (_monacoLoadCompleter!.isCompleted) return;

    try {
      if (monaco != null) {
        if (!_monacoLoadCompleter!.isCompleted) {
          _monacoLoadCompleter!.complete();
        }
        return;
      }

      final scriptsExist = web.document.querySelector('script[src*="monaco-editor"]') != null;
      
      if (!scriptsExist) {
        final configScript = web.document.createElement('script') as web.HTMLScriptElement;
        configScript.text = '''
          var require = { 
            paths: { 
              'vs': 'https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.45.0/min/vs' 
            } 
          };
        ''';
        web.document.head!.appendChild(configScript);

        final loaderScript = web.document.createElement('script') as web.HTMLScriptElement;
        loaderScript.src = 'https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.45.0/min/vs/loader.js';
        
        final loaderCompleter = Completer<void>();
        loaderScript.onLoad.listen((_) => loaderCompleter.complete());
        loaderScript.onError.listen((_) => loaderCompleter.completeError('Failed to load Monaco'));
        
        web.document.head!.appendChild(loaderScript);
        await loaderCompleter.future;
      }

      try {
        final editorCompleter = Completer<void>();
        require(
          ['vs/editor/editor.main'].jsify() as JSArray,
          (() => editorCompleter.complete()).toJS,
        );
        await editorCompleter.future;
      } catch (e) {
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
      ui_web.platformViewRegistry.registerViewFactory(
        _viewType,
        (int viewId) {
          final container = web.document.createElement('div') as web.HTMLDivElement;
          container.id = 'monaco-container-$viewId';
          container.style.width = '100%';
          container.style.height = '100%';
          container.style.position = 'relative';
          container.style.overflow = 'hidden';
          
          // Set container background
          if (widget.options.backgroundColor != null) {
            container.style.backgroundColor = widget.options.backgroundColor!;
          } else if (!widget.options.transparentBackground) {
            container.style.backgroundColor = widget.options.theme == MonacoTheme.vs 
                ? '#FFFFFF' 
                : '#1E1E1E';
          }
          
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
      _injectCustomStyles(container.id);

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
        'scrollbar': {
          'vertical': 'visible',
          'horizontal': 'visible',
          'verticalScrollbarSize': widget.options.scrollbarSize,
          'horizontalScrollbarSize': widget.options.scrollbarSize,
          'useShadows': false,
        }.jsify(),
      }.jsify() as JSObject;

      _editor = monacoEditor.create(container, options);
      
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

  void _injectCustomStyles(String containerId) {
    final styleId = 'monaco-custom-style-$containerId';
    
    if (web.document.getElementById(styleId) != null) return;
    
    final style = web.document.createElement('style') as web.HTMLStyleElement;
    style.id = styleId;
    
    // Get colors based on theme or custom values
    final scrollbarColor = widget.options.scrollbarColor ?? 
        (widget.options.theme == MonacoTheme.vs 
            ? 'rgba(0, 0, 0, 0.3)' 
            : 'rgba(255, 255, 255, 0.3)');
    
    final scrollbarHoverColor = widget.options.scrollbarHoverColor ?? 
        (widget.options.theme == MonacoTheme.vs 
            ? 'rgba(0, 0, 0, 0.5)' 
            : 'rgba(255, 255, 255, 0.5)');
    
    final scrollbarTrackColor = widget.options.scrollbarTrackColor ?? 'transparent';
    
    style.textContent = '''
      /* Custom scrollbar */
      #$containerId ::-webkit-scrollbar {
        width: ${widget.options.scrollbarSize}px;
        height: ${widget.options.scrollbarSize}px;
      }
      
      #$containerId ::-webkit-scrollbar-thumb {
        background: $scrollbarColor;
        border-radius: ${widget.options.scrollbarRadius}px;
      }
      
      #$containerId ::-webkit-scrollbar-thumb:hover {
        background: $scrollbarHoverColor;
      }
      
      #$containerId ::-webkit-scrollbar-track {
        background: $scrollbarTrackColor;
      }
      
      #$containerId .monaco-scrollable-element > .scrollbar {
        width: ${widget.options.scrollbarSize}px !important;
        height: ${widget.options.scrollbarSize}px !important;
      }
      
      #$containerId .monaco-scrollable-element > .scrollbar > .slider {
        border-radius: ${widget.options.scrollbarRadius}px !important;
      }
      
      ${widget.options.transparentBackground ? '''
      #$containerId .monaco-editor,
      #$containerId .monaco-editor-background,
      #$containerId .monaco-editor .margin {
        background: transparent !important;
      }
      ''' : widget.options.backgroundColor != null ? '''
      #$containerId .monaco-editor,
      #$containerId .monaco-editor-background {
        background: ${widget.options.backgroundColor} !important;
      }
      ''' : ''}
    ''';
    
    web.document.head!.appendChild(style);
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
    model.onDidChangeContent((() {
      if (mounted) {
        debugPrint('[Monaco Web] Content changed');
      }
    }).toJS);
  }

  @override
  Widget build(BuildContext context) {
    return HtmlElementView(viewType: _viewType);
  }

  @override
  void dispose() {
    _editor?.dispose();
    super.dispose();
  }
}