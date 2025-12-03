import 'package:flutter/material.dart';
import 'screens/login_page.dart';
import 'screens/home_dashboard.dart';
import 'screens/classes_page.dart';
import 'screens/class_routine_page.dart';
import 'screens/homework_page.dart';
import 'screens/notices_page.dart';
import 'screens/results_page.dart';
import 'screens/teachers_page.dart';
import 'screens/settings_page.dart';
import 'models/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Main MaterialApp with Material 3 theme and navigation routes
    return MaterialApp(
      title: 'School Management App',
      theme: ThemeData(useMaterial3: true), // Using Material 3 for clean UI
      initialRoute: '/', // Start with login page
      routes: {
        '/': (context) => const LoginPage(), // Login page as default route
        '/home': (context) {
          // Home dashboard, receiving user data from login
          final user = ModalRoute.of(context)!.settings.arguments as User;
          return HomeDashboard(user: user);
        },
        '/classes': (context) {
          // Classes page
          final user = ModalRoute.of(context)!.settings.arguments as User;
          return ClassesPage(user: user);
        },
        '/routine': (context) {
          // Class routine page
          final user = ModalRoute.of(context)!.settings.arguments as User;
          return ClassRoutinePage(user: user);
        },
        '/homework': (context) {
          // Homework page
          final user = ModalRoute.of(context)!.settings.arguments as User;
          return HomeworkPage(user: user);
        },
        '/notices': (context) {
          // Notices page
          final user = ModalRoute.of(context)!.settings.arguments as User;
          return NoticesPage(user: user);
        },
        '/results': (context) {
          // Results page
          final user = ModalRoute.of(context)!.settings.arguments as User;
          return ResultsPage(user: user);
        },
        '/teachers': (context) {
          // Teachers page
          final user = ModalRoute.of(context)!.settings.arguments as User;
          return TeachersPage(user: user);
        },
        '/settings': (context) {
          // Settings page
          final user = ModalRoute.of(context)!.settings.arguments as User;
          return SettingsPage(user: user);
        },
      },
    );
  }
}