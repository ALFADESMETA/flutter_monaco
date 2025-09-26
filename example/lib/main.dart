import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_monaco/flutter_monaco.dart';
import 'package:flutter_monaco/src/platform/web/monaco_web.dart';
import 'package:flutter_monaco/src/models/monaco_enums.dart';

void main() {
  if (kIsWeb) {
    runApp(const WebMonacoTestApp());
  } else {
    runApp(const NativeMonacoApp());
  }
}

// Web-only fullscreen editor
class WebMonacoTestApp extends StatelessWidget {
  const WebMonacoTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monaco Editor',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: MonacoWebSimple(),
      ),
    );
  }
}

// Native app (your existing one)
class NativeMonacoApp extends StatelessWidget {
  const NativeMonacoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Monaco',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Monaco Editor'),
        ),
        body: const SafeArea(
          child: MonacoEditor(
            showStatusBar: true,
          ),
        ),
      ),
    );
  }
}

// Simple web widget
class MonacoWebSimple extends StatefulWidget {
  const MonacoWebSimple({super.key});

  @override
  State<MonacoWebSimple> createState() => _MonacoWebSimpleState();
}

class _MonacoWebSimpleState extends State<MonacoWebSimple> {
  final _platform = MonacoWeb();
  bool _isLoading = true;
  Object? _error;

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    try {
      await _platform.initialize();
      if (mounted) {
        setState(() => _isLoading = false);
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = e;
          _isLoading = false;
        });
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
            Text(
              'Error: $_error',
              style: const TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return MonacoWebWidget(
      options: const EditorOptions(
        language: MonacoLanguage.dart,
        theme: MonacoTheme.vsDark,
        fontSize: 14,
        minimap: true,
      ),
    );
  }
}