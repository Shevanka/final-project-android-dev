import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/onboarding.dart';
import 'screens/login.dart';
import 'screens/home.dart';

class AppRoutes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String home = '/home';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashScreen(),
    onboarding: (context) => OnboardingScreen(),
    login: (context) => const LoginScreen(),
    home: (context) => const HomeScreen(),
  };
}