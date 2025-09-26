import 'package:flutter/material.dart';
import 'package:flutter_monaco/src/platform/web/monaco_web.dart';
import 'package:flutter_monaco/src/models/editor_options.dart';
import 'package:flutter_monaco/src/models/monaco_enums.dart';

void main() {
  runApp(const WebMonacoTestApp());
}

class WebMonacoTestApp extends MaterialApp {
  const WebMonacoTestApp({super.key})
      : super(
          title: 'Monaco Web Test',
          home: const WebMonacoTestScreen(),
        );
}

class WebMonacoTestScreen extends StatelessWidget {
  const WebMonacoTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monaco Editor - Web Test'),
        backgroundColor: const Color(0xFF1E1E1E),
      ),
      body: const WebMonacoEditorWidget(),
    );
  }
}

class WebMonacoEditorWidget extends StatefulWidget {
  const WebMonacoEditorWidget({super.key});

  @override
  State<WebMonacoEditorWidget> createState() => _WebMonacoEditorWidgetState();
}

class _WebMonacoEditorWidgetState extends State<WebMonacoEditorWidget> {
  final MonacoWeb _platform = MonacoWeb();
  bool _isInitialized = false;
  Object? _error;

  @override
  void initState() {
    super.initState();
    _initializePlatform();
  }

  Future<void> _initializePlatform() async {
    try {
      await _platform.initialize();
      if (mounted) {
        setState(() => _isInitialized = true);
      }
    } catch (e) {
      if (mounted) {
        setState(() => _error = e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 48, color: Colors.red),
            const SizedBox(height: 16),
            Text('Error: $_error'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _error = null;
                  _isInitialized = false;
                });
                _initializePlatform();
              },
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    if (!_isInitialized) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return MonacoWebWidget(
      controller: _DummyController(),
      options: const EditorOptions(
        language: MonacoLanguage.dart,
        theme: MonacoTheme.vsDark,
        fontSize: 14,
        minimap: true,
      ),
    );
  }
}

// Dummy controller - not used on web
class _DummyController {
  Future<String> getValue() async => '';
  Future<void> setValue(String value) async {}
  Stream<bool> get onContentChanged => const Stream.empty();
}