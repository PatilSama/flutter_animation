import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedRotationEx extends StatefulWidget {
  const AnimatedRotationEx({super.key});

  @override
  State<AnimatedRotationEx> createState() => _AnimatedRotationExState();
}

class _AnimatedRotationExState extends State<AnimatedRotationEx> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedRotation(
          turns: 0.25,
          filterQuality: FilterQuality.high,
          duration: const Duration(seconds: 1),
          child: Image.asset(
            "assets/flutter.png",
            width: 150,
            height: 150,
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            turns += 1;
          });
        },
      ),
    );
  }
}
