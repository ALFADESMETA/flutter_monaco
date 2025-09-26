import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

// Conditional imports
import '../models/editor_options.dart';
import '../models/monaco_enums.dart';

// Only import native controller on non-web
import '../core/monaco_controller.dart' if (dart.library.html) 'dart:html';
import '../platform/web/monaco_web.dart';

class FlutterFlowMonaco extends StatefulWidget {
  const FlutterFlowMonaco({
    super.key,
    this.width,
    this.height,
    this.initialCode,
    this.language,
    this.theme,
    this.fontSize,
    this.showLineNumbers,
    this.showMinimap,
    this.readOnly,
    this.scrollbarSize,
    this.transparentBackground,
  });

  final double? width;
  final double? height;
  final String? initialCode;
  final String? language;
  final String? theme;
  final double? fontSize;
  final bool? showLineNumbers;
  final bool? showMinimap;
  final bool? readOnly;
  final int? scrollbarSize;
  final bool? transparentBackground;

  @override
  State<FlutterFlowMonaco> createState() => _FlutterFlowMonacoState();
}

class _FlutterFlowMonacoState extends State<FlutterFlowMonaco> {
  Object? _error;

  EditorOptions get _options => EditorOptions(
        language: _parseLanguage(widget.language ?? 'dart'),
        theme: _parseTheme(widget.theme ?? 'vs-dark'),
        fontSize: widget.fontSize ?? 14,
        lineNumbers: widget.showLineNumbers ?? true,
        minimap: widget.showMinimap ?? true,
        readOnly: widget.readOnly ?? false,
        initialValue: widget.initialCode,
        scrollbarSize: widget.scrollbarSize ?? 8,
        transparentBackground: widget.transparentBackground ?? false,
      );

  MonacoLanguage _parseLanguage(String lang) {
    switch (lang.toLowerCase()) {
      case 'javascript':
      case 'js':
        return MonacoLanguage.javascript;
      case 'typescript':
      case 'ts':
        return MonacoLanguage.typescript;
      case 'python':
        return MonacoLanguage.python;
      case 'java':
        return MonacoLanguage.java;
      case 'cpp':
      case 'c++':
        return MonacoLanguage.cpp;
      case 'html':
        return MonacoLanguage.html;
      case 'css':
        return MonacoLanguage.css;
      case 'json':
        return MonacoLanguage.json;
      default:
        return MonacoLanguage.dart;
    }
  }

  MonacoTheme _parseTheme(String theme) {
    switch (theme.toLowerCase()) {
      case 'light':
      case 'vs':
        return MonacoTheme.vs;
      case 'dark':
      case 'vs-dark':
        return MonacoTheme.vsDark;
      case 'hc-light':
        return MonacoTheme.hcLight;
      case 'hc-black':
        return MonacoTheme.hcBlack;
      default:
        return MonacoTheme.vsDark;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_error != null) {
      return Container(
        width: widget.width,
        height: widget.height ?? 400,
        color: const Color(0xFF1e1e1e),
        child: const Center(
          child: Text(
            'Monaco not available: Web platform requires internet connection',
            style: TextStyle(color: Colors.red),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    if (kIsWeb) {
      return _WebMonacoEditor(
        width: widget.width,
        height: widget.height ?? 400,
        options: _options,
      );
    } else {
      return Container(
        width: widget.width,
        height: widget.height ?? 400,
        color: const Color(0xFF1e1e1e),
        child: const Center(
          child: Text(
            'Native Monaco not yet implemented in this build',
            style: TextStyle(color: Colors.white70),
          ),
        ),
      );
    }
  }
}

class _WebMonacoEditor extends StatefulWidget {
  final double? width;
  final double height;
  final EditorOptions options;

  const _WebMonacoEditor({
    this.width,
    required this.height,
    required this.options,
  });

  @override
  State<_WebMonacoEditor> createState() => _WebMonacoEditorState();
}

class _WebMonacoEditorState extends State<_WebMonacoEditor> {
  final _platform = MonacoWeb();
  bool _initialized = false;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    try {
      await _platform.initialize();
      if (mounted) setState(() => _initialized = true);
    } catch (e) {
      debugPrint('Monaco init error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_initialized) {
      return SizedBox(
        width: widget.width,
        height: widget.height,
        child: const ColoredBox(
          color: Color(0xFF1e1e1e),
          child: Center(
            child: CircularProgressIndicator(
              color: Colors.white70,
              strokeWidth: 2,
            ),
          ),
        ),
      );
    }

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: MonacoWebWidget(options: widget.options),
    );
  }
}