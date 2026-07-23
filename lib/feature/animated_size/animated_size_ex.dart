import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedSizeEx extends StatefulWidget {
  const AnimatedSizeEx({super.key});

  @override
  State<AnimatedSizeEx> createState() => _AnimatedSizeExState();
}

class _AnimatedSizeExState extends State<AnimatedSizeEx> {
  bool expand = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSize(
          duration: Duration(seconds: 2),
          child: Center(
            child: SizedBox(
              width: 300,
              child: Text(
                "Flutter is Google's UI toolkit for building beautiful applications for mobile, web, desktop, and embedded devices from a single codebase.",
                maxLines: expand ? null : 2,
                overflow: TextOverflow.visible,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            expand = !expand;
          });
        },
      ),
    );
  }
}
