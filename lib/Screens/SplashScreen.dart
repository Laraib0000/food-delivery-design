import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:foodpanda/Screens/WelcomeScreen.dart';
import 'package:foodpanda/constants/color.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 3), vsync: this)
        ..repeat();

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => WelcomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: MyColors.primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 300,
                width: 600,
                child: Center(
                  child: Image(
                      color: MyColors.whiteC,
                      height: 100,
                      image: AssetImage('assets/panda.png')),
                ),
              ),
            ),
            Text(
              'Food panda',
              style: TextStyle(
                  color: MyColors.whiteC,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
