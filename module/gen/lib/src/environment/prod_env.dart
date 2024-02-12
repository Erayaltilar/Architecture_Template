import 'package:envied/envied.dart';
import 'package:gen/src/environment/app_configuration.dart';

part 'prod_env.g.dart';

@Envied(
  path: 'assets/env/.prod.env',
  obfuscate: true,
)

// Production Environment Variables
final class ProdEnv implements AppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _ProdEnv.baseUrl;

  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = _ProdEnv.apiKey;

  @override
  String get baseUrl => _baseUrl;

  @override
  String get apiKey => _apiKey;
}
