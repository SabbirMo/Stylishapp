

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stylishapp/Views/Splashview/splash_screen_one.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

    @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      //Navigator Home Page
      Navigator.push(context, 
      MaterialPageRoute(builder: (context) => const SplashScreenOne())
      );
     });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(image: AssetImage('assets/logo/stylish.png')),
      ),
    );
  }
}