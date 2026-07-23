import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedOpacityEx extends StatefulWidget {
  const AnimatedOpacityEx({super.key});

  @override
  State<AnimatedOpacityEx> createState() => _AnimatedOpacityExState();
}

class _AnimatedOpacityExState extends State<AnimatedOpacityEx> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: isVisible ? 1.0:0.4,
          duration: Duration(seconds: 2),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Center(
              child: Image.network(
                "https://picsum.photos/250",
                width: 250,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){setState(() {
        isVisible = !isVisible;
      });}),
    );
  }
}
