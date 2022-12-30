import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tween_animation/view/animation/animation.dart';
import 'dart:math' as math;

import 'package:flutter_tween_animation/view/hero_animation/one_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  double height = 100;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => OneView()));
    });
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  late AnimationController controller =
      AnimationController(vsync: this, duration: Duration(seconds: 3))
        ..repeat();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // tween animation
            DefaultTextStyle(
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                      "Coder Crew",
                    )
                  ],
                  isRepeatingAnimation: false,
                )),
            SizedBox(
              height: 30,
            ),
            // animated controller
            AnimatedBuilder(
                child: Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 100,
                ),
                animation: controller,
                builder: (
                  BuildContext context,
                  Widget? child,
                ) {
                  return Transform.rotate(
                      angle: controller.value * 2.0 * math.pi, child: child);
                })
          ],
        ),
      ),
    );
  }
}
