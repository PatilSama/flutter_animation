import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedSlideEx extends StatefulWidget {
  const AnimatedSlideEx({super.key});

  @override
  State<AnimatedSlideEx> createState() => _AnimatedSlideExState();
}

class _AnimatedSlideExState extends State<AnimatedSlideEx> {
  bool move = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSlide(
          offset: move?Offset(-1, -1):Offset.zero,
          duration: Duration(seconds: 2),
          curve: Curves.easeIn,

          child: Container(width: 100, height: 100, color: Colors.blue),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){setState(() {
        move = !move;
      });}),
    );
  }
}
