import 'package:envied/envied.dart';
import 'package:messanger/env/env.dart';

part 'production.env.g.dart';

@Envied(name: 'Env', path: '.env/.production.env')
final class ProductionEnv extends Env {
  @override
  @EnviedField(varName: 'APP_MODE')
  final appMode = _Env.appMode;

  @override
  @EnviedField(varName: 'API_KEY', obfuscate: true)
  final apiKey = _Env.apiKey;

  @override
  @EnviedField(varName: 'API_URL')
  final apiUrl = _Env.apiUrl;
}
