import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'src/platform/web/monaco_web.dart';

/// Web implementation of the Flutter Monaco plugin
class FlutterMonacoWeb {
  static void registerWith(Registrar registrar) {
    // Web plugin registration
    MonacoWeb().initialize();
  }
}