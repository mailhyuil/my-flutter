import 'package:flutter/material.dart';
import 'package:hahaha/widgets/app_bar.dart';
import 'package:hahaha/widgets/bottom_navigation_bar.dart';
import 'package:hahaha/widgets/drawer.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  int counter = 0;
  Alignment alignment = Alignment.topCenter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          text: 'Animation',
        ),
        drawer: const CustomDrawer(),
        bottomNavigationBar: const CustomBottomNavigationBar(),
        body: GestureDetector(
          onTap: () {
            setState(() {
              counter++;
            });
          },
          onLongPress: () {
            setState(() {
              counter = 0;
              alignment = alignment == Alignment.bottomCenter
                  ? Alignment.topCenter
                  : Alignment.bottomCenter;
            });
          },
          child: Container(
            color: Colors.blueGrey,
            child: Center(
              child: AnimatedAlign(
                  alignment: alignment,
                  duration: const Duration(milliseconds: 5000),
                  curve: Curves.bounceInOut,
                  child:
                      Text('$counter', style: const TextStyle(fontSize: 50))),
            ),
          ),
        ));
  }
}
