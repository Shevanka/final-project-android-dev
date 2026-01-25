import 'package:flutter/material.dart';
import 'package:finalproject/screens/screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double opacityLevel = 1.0;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        opacityLevel = 0.3;
      });
    });

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => OnboardingScreen(),
          transitionsBuilder: (_, animation, __, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 500),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEB4D57),
      body: Center(
        child: Image.asset('assets/img/logo.png'),
      ),
    );
  }
}
