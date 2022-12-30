import 'package:flutter/material.dart';
import 'package:flutter_tween_animation/view/hero_animation/2nd_view.dart';

class OneView extends StatefulWidget {
  @override
  State<OneView> createState() => _OneViewState();
}

class _OneViewState extends State<OneView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Sec_View(
                              image:
                                  'https://cdn.pixabay.com/photo/2017/12/29/01/33/happy-3046563_960_720.jpg',
                            )));
              },
              leading: Hero(
                tag: "image",
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2017/12/29/01/33/happy-3046563_960_720.jpg'),
                  radius: 50,
                ),
              ),
              title: Text("beautiful"),
              trailing: Icon(Icons.access_time),
            ),
          ],
        ),
      ),
    );
  }
}
