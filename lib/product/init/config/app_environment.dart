import 'package:flutter/foundation.dart';
import 'package:gen/gen.dart';

//Application environment manager class
final class AppEnvironment {
// Setup application environment
  AppEnvironment.setup({required AppConfiguration config}) {
    _config = config;
  }

// General application environment setup
  AppEnvironment.general() {
    _config = kDebugMode ? DevEnv() : ProdEnv();
  }

  static late final AppConfiguration _config;

// Network base url
  static String get baseUrl => _config.baseUrl;

// Google maps api key
  static String get apiKey => _config.apiKey;
}

///Get application environment items
enum AppEnvironmentItems {
  // Network base url
  baseUrl,

  apiKey;

  String get value {
    try {
      switch (this) {
        case AppEnvironmentItems.baseUrl:
          return AppEnvironment.baseUrl;
        case AppEnvironmentItems.apiKey:
          return AppEnvironment.apiKey;
      }
    } catch (e) {
      throw Exception('AppEnvironmentItems not initialized');
    }
  }
}
