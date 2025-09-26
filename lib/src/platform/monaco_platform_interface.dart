import 'package:flutter/widgets.dart';
import '../models/editor_options.dart';
import '../core/monaco_controller.dart';

/// Abstract interface for Monaco Editor platform implementations
abstract class MonacoPlatformInterface {
  /// Creates a platform-specific Monaco Editor widget
  Widget createEditor({
    required MonacoController controller,
    required EditorOptions options,
  });

  /// Initialize platform-specific resources
  Future<void> initialize();

  /// Cleanup platform-specific resources
  Future<void> dispose();
}