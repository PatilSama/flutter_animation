import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatePositionedEx extends StatefulWidget {
  const AnimatePositionedEx({super.key});

  @override
  State<AnimatePositionedEx> createState() => _AnimatePositionedExState();
}

class _AnimatePositionedExState extends State<AnimatePositionedEx> {
  bool move = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            left: 100,
            top: 100,
            width: move ? 200 : 100,
            height: move ? 200 : 100,
            duration: Duration(seconds: 2),
            child: Container(width: 100, height: 100, color: Colors.blue),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            move = !move;
          });
        },
      ),
    );
  }
}
