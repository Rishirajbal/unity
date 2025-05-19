import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/home_screen.dart';
import 'screens/game_screen.dart';
import 'screens/settings_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const BoxGameApp());
}

class BoxGameApp extends StatelessWidget {
  const BoxGameApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Box Game',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.dark,
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          headlineMedium: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          bodyLarge: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
          bodyMedium: TextStyle(
            fontSize: 16.0,
            color: Colors.white70,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/game': (context) => const GameScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}