import 'dart:async';
import 'package:fitness_app/onboardScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer() {
    Timer(
      const Duration(seconds: 3),
      () async {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const OnboardScreen(),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/img4.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
