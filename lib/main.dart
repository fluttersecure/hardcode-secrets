import 'package:flutter/material.dart';
import 'constants.dart';
import 'env_loader.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvLoader.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // 🚨 Hardcode
  final String apiKeyPlain = 'MI_API_KEY_SECRETA_PLAIN_789';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab: Tres Credenciales',
      home: Scaffold(
        appBar: AppBar(title: const Text('Tres Métodos Inseguros')),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InfoTile(label: 'Plain String', value: apiKeyPlain),
              InfoTile(label: 'Constants File', value: AppConstants.apiKeyConst),
              InfoTile(label: '.env Asset', value: EnvLoader.apiKeyEnv),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final String label;
  final String value;

  const InfoTile({required this.label, required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[850],
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(label, style: const TextStyle(color: Colors.greenAccent)),
        subtitle: Text(value, style: const TextStyle(color: Colors.white70)),
      ),
    );
  }
}
