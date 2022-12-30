import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tween_animation/view/loading_animation/loadin_animation.dart';

class Sec_View extends StatefulWidget {
  String? image;

  Sec_View({this.image});
  @override
  State<Sec_View> createState() => _Sec_ViewState();
}

class _Sec_ViewState extends State<Sec_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
            tag: "image",
            child: Container(
              height: 300,
              width: double.infinity,
              child: Image.network(widget.image.toString()),
            ),
          ),
        ),
        AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              "Beautiful",
              textStyle: TextStyle(
                fontSize: 23,
              ),
              colors: [Colors.red, Colors.green, Colors.amber, Colors.white],
            )
          ],
          isRepeatingAnimation: true,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                  "You might come up with an issue that the text does not get updated with setState as shown here. The solution to this, is a key that changes based on the text. For reference, watch this video.",
                  textAlign: TextAlign.left)
            ],
            isRepeatingAnimation: false,
          ),
        ),
        DefaultTextStyle(
            style: TextStyle(
                fontSize: 23, fontWeight: FontWeight.bold, color: Colors.black),
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                  "Flutter Developer",
                )
              ],
              isRepeatingAnimation: false,
            )),
        MaterialButton(
            color: Colors.green,
            child: Text(
              "onTap",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => LodingAnimation()));
            })
      ]),
    ));
  }
}
