import 'package:flutter/material.dart';
import 'dart:math' as math;

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  double height = 100;

  late AnimationController controller =
      AnimationController(vsync: this, duration: Duration(seconds: 3))
        ..repeat();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // tween animation
          Center(
            child: TweenAnimationBuilder(
                curve: Curves.bounceOut,
                tween: Tween<double>(begin: 100, end: height),
                duration: Duration(milliseconds: 800),
                builder: (context, value, child) {
                  return Icon(
                    Icons.star,
                    color: Colors.red,
                    size: value,
                  );
                },
                onEnd: () {
                  height = height == 100 ? 200 : 100;
                  setState(() {});
                }),
          ),
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
    );
  }
}
