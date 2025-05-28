// lib/env_loader.dart
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvLoader {
  static Future<void> init() => dotenv.load(fileName: '.env');
  static String get apiKeyEnv => dotenv.env['API_KEY_ENV'] ?? '<no definido>';
}
