import 'package:expansetracer/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:expansetracer/Slider/slider.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
          curve: Curves.elasticInOut,
          duration: 1,
          splash: Image.asset('assets/icon.png'),
          splashIconSize: 150,
          nextScreen: SliderOfApp(),
          splashTransition: SplashTransition.scaleTransition,
          pageTransitionType: PageTransitionType.bottomToTop,
          backgroundColor:Colors.teal[900]!),
    );
  }
}
