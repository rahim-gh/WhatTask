import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:what_task/core/configs/theme_config.dart';
import 'package:what_task/core/screens/main_screen.dart';

void main() async {
  hierarchicalLoggingEnabled = true;
  Logger.root.level = Level.CONFIG;

  final Logger logs = Logger('Main');
  try {
    // Init the app
    logs.info(
      'Starting the initializing',
    );
    await init();

    // Start the main app
    logs.info('Starting the app');
    runApp(const MainApp());
  } catch (e, stackTrace) {
    logs.shout(
      'Couldn\'t start the app',
      e,
      stackTrace,
    );
    rethrow;
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      key: key,
      title: 'WhatTask?',
      theme: lightThemeData(),
      darkTheme: darkThemeData(),

      home: MainScreen(),
    );
  }
}

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Logger logs = Logger('Startup');
  try {
    // // Load the environment file
    // logs.info('Loading dotenv file');
    // await dotenv.load(fileName: ".env");

    // // Initialize the Supabase BaaS
    // logs.info('Initializing SupaBase');
    // await Supabase.initialize(
    //   url: dotenv.get('SUPABASE_URL'),
    //   anonKey: dotenv.get('SUPABASE_KEY'),
    // );
  } catch (e, stackTrace) {
    logs.shout(
      'Problem with initializing the app on startup',
      e,
      stackTrace,
    );
    rethrow; // !NOTE: Throw any error caught for now
  }
}
