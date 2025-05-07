import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  // Load the init configurations
  await init();

  // Start the main app
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: Text('Hello World!'))),
    );
  }
}

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    // Load the environment file
    await dotenv.load(fileName: ".env");

    // Initialize the Supabase BaaS
    await Supabase.initialize(
      url: dotenv.get('SUPABASE_URL'),
      anonKey: dotenv.get('SUPABASE_KEY'),
    );
  } catch (e) {
    rethrow; // NOTE: Throw any error caught for now
  }
}
