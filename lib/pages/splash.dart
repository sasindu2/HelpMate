import 'dart:async';

import 'package:flutter/material.dart';
import 'package:helpmate/misc/constants.dart';
import 'package:helpmate/routes/route_manager.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () {
      Navigator.popAndPushNamed(context, RouteManager.loginPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              height: 130,
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBoxH20(),
            LoadingAnimationWidget.prograssiveDots(
              color: Colors.purple,
              size: 70,
            ),
          ],
        ),
      ),
    );
  }
}
