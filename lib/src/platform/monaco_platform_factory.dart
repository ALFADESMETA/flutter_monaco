import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/widgets.dart';
import '../core/monaco_controller.dart';
import '../models/editor_options.dart';
import 'monaco_platform_interface.dart';
import 'web/monaco_web.dart';

/// Factory for creating platform-specific Monaco implementations
class MonacoPlatformFactory {
  static MonacoPlatformInterface createPlatform() {
    if (kIsWeb) {
      return MonacoWeb();
    } else {
      return MonacoNativePlatform();
    }
  }
}

/// Native platform implementation (uses existing MonacoController)
class MonacoNativePlatform implements MonacoPlatformInterface {
  MonacoController? _controller;

  @override
  Future<void> initialize() async {
    // Native initialization happens in createEditor
  }

  @override
  Widget createEditor({
    required MonacoController controller,
    required EditorOptions options,
  }) {
    _controller = controller;
    // Return the existing WebView widget from the native controller
    return controller.webViewWidget;
  }

  @override
  Future<void> dispose() async {
    _controller?.dispose();
  }
}