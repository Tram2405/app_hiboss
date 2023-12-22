import 'dart:async';

import 'package:app_hiboss/gen/assets.gen.dart';
import 'package:app_hiboss/pages/intro/intro_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int time = 0;

  @override
  void initState() {
    super.initState();
    //   Timer(const , () {
    //     Navigator.of(context).pushAndRemoveUntil(
    //         PageTransition(
    //             type: PageTransitionType.rightToLeft, child: const IntroScreen()),
    // // chuyển qua màn Duration(seconds: 3)hình khác từ phải sang trái.
    //         (route) => false);
    //   });

    nextPage(3);
  }

  void nextPage(int value) {
    Timer(Duration(seconds: value), () {
      Navigator.of(context).pushAndRemoveUntil(
          PageTransition(
              type: PageTransitionType.rightToLeft, child: const IntroPage()),
          // type: PageTransitionType.rightToLeft, child:  LoginScreen()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Assets.images.splashBgr1Png.path,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
              left: 0,
              right: 0,
              top: MediaQuery.of(context).size.height * (202 + 44) / 844,
              child: SvgPicture.asset(Assets.images.hiBossLogoSvg))
        ],
      ),
    );
  }
}
