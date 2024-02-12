import 'package:architecture_template/product/init/config/application_configuration.dart';
import 'package:envied/envied.dart';

part 'dev_env.g.dart';

@Envied(
  path: 'assets/env/.dev.env',
  obfuscate: true,
)

// Dev Environment Variables
final class DevEnv implements AppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _DevEnv.baseUrl;

  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = _DevEnv.apiKey;

  @override
  String get baseUrl => _baseUrl;

  @override
  String get apiKey => _apiKey;
}
