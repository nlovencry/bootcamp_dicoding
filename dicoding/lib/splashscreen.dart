import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('images/profile_images.jpg',
          height: 250,
          width: 250,
        ),
        SizedBox(height: 15),
        const Text('Dicoding Academy', style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold,
            color: Colors.black,
        ),),
      ],
    ),
      backgroundColor: Colors.blue,
      nextScreen: const HomePage(),
      splashIconSize: 315,
      duration: 2000,
      // splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 2),
    );
  }
}

