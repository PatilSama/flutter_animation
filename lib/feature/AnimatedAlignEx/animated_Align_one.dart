import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedAlignOne extends StatefulWidget {
  const AnimatedAlignOne({super.key});

  @override
  State<AnimatedAlignOne> createState() => _AnimatedAlignOneState();
}

class _AnimatedAlignOneState extends State<AnimatedAlignOne> {
  Alignment alignment = Alignment.topLeft;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedAlign(
        alignment: alignment,
        duration: Duration(seconds: 2),
        curve: Curves.easeInOut,
        child: Container(width: 100, height: 100, color: Colors.green),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            alignment = alignment == Alignment.topLeft
                ? Alignment.bottomRight
                : Alignment.topLeft;
          });
        },
      ),
    );
  }
}
