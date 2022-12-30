import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LodingAnimation extends StatefulWidget {
  const LodingAnimation({Key? key}) : super(key: key);

  @override
  State<LodingAnimation> createState() => _LodingAnimationState();
}

class _LodingAnimationState extends State<LodingAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoadingAnimationWidget.flickr(
                  leftDotColor: Colors.red,
                  rightDotColor: Colors.green,
                  size: 40),
              LoadingAnimationWidget.beat(color: Colors.black, size: 35),
              SizedBox(
                height: 20,
              ),
              LoadingAnimationWidget.twoRotatingArc(
                  color: Colors.green, size: 30),
              SizedBox(
                height: 20,
              ),
              LoadingAnimationWidget.threeArchedCircle(
                  color: Colors.amber, size: 35),
              SizedBox(
                height: 20,
              ),
              LoadingAnimationWidget.threeRotatingDots(
                  color: Colors.amber, size: 35),
            ],
          ),
        ),
      ),
    );
  }
}
