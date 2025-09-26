import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_monaco/flutter_monaco.dart';
import 'package:flutter_monaco/src/widgets/flutterflow_monaco.dart';

void main() {
  if (kIsWeb) {
    runApp(const WebMonacoTestApp());
  } else {
    runApp(const NativeMonacoApp());
  }
}

// Web test app with multiple sized containers
class WebMonacoTestApp extends StatelessWidget {
  const WebMonacoTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monaco HtmlElementView Test',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const MonacoLayoutTestPage(),
    );
  }
}

// Test page showing Monaco in different layouts
class MonacoLayoutTestPage extends StatefulWidget {
  const MonacoLayoutTestPage({super.key});

  @override
  State<MonacoLayoutTestPage> createState() => _MonacoLayoutTestPageState();
}

class _MonacoLayoutTestPageState extends State<MonacoLayoutTestPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monaco Layout Tests'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Container Test'),
            Tab(text: 'Multiple Editors'),
            Tab(text: 'ScrollView Test'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          _ContainerTest(),
          _MultipleEditorsTest(),
          _ScrollViewTest(),
        ],
      ),
    );
  }
}

// Test 1: Monaco in fixed-size containers
class _ContainerTest extends StatelessWidget {
  const _ContainerTest();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Monaco in 800x400 Container',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Container(
            width: 800,
            height: 400,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              child: FlutterFlowMonaco(
                width: 800,
                height: 400,
                initialCode: '''// Test: Container Layout
function testContainer() {
  console.log("Monaco respects container size!");
  console.log("Width: 800px, Height: 400px");
}

testContainer();''',
                language: 'javascript',
                theme: 'vs-dark',
                fontSize: 14,
                showLineNumbers: true,
                showMinimap: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Test 2: Multiple Monaco editors on same page
class _MultipleEditorsTest extends StatelessWidget {
  const _MultipleEditorsTest();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                const Text(
                  'Editor 1 - JavaScript',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                    ),
                    child: const FlutterFlowMonaco(
                      initialCode: '''const greeting = "Hello";
console.log(greeting);''',
                      language: 'javascript',
                      theme: 'vs-dark',
                      showMinimap: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              children: [
                const Text(
                  'Editor 2 - Python',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange),
                    ),
                    child: const FlutterFlowMonaco(
                      initialCode: '''def greet(name):
    print(f"Hello, {name}!")

greet("World")''',
                      language: 'python',
                      theme: 'vs-dark',
                      showMinimap: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Test 3: Monaco in ScrollView
class _ScrollViewTest extends StatelessWidget {
  const _ScrollViewTest();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Monaco Editors in ScrollView',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          _buildEditorCard(
            'HTML Editor',
            Colors.red,
            '''<!DOCTYPE html>
<html>
<head>
  <title>Test Page</title>
</head>
<body>
  <h1>Hello World</h1>
</body>
</html>''',
            'html',
          ),
          const SizedBox(height: 16),
          _buildEditorCard(
            'CSS Editor',
            Colors.purple,
            '''body {
  font-family: Arial, sans-serif;
  background: #f0f0f0;
}

h1 {
  color: #333;
}''',
            'css',
          ),
          const SizedBox(height: 16),
          _buildEditorCard(
            'JSON Editor',
            Colors.teal,
            '''{
  "name": "Monaco Test",
  "version": "1.0.0",
  "features": ["HtmlElementView", "Layout Support"]
}''',
            'json',
          ),
        ],
      ),
    );
  }

  Widget _buildEditorCard(
    String title,
    Color borderColor,
    String code,
    String language,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Container(
          height: 300,
          decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: FlutterFlowMonaco(
              height: 300,
              initialCode: code,
              language: language,
              theme: 'vs-dark',
              showMinimap: false,
            ),
          ),
        ),
      ],
    );
  }
}

// Native app (unchanged)
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
          title: const Text('Monaco Editor - Native'),
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