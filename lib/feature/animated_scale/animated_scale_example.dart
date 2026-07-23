import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedScaleExample extends StatefulWidget {
  const AnimatedScaleExample({super.key});

  @override
  State<AnimatedScaleExample> createState() => _AnimatedScaleExampleState();
}

class _AnimatedScaleExampleState extends State<AnimatedScaleExample> {
  double scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedScale(
          scale: scale,
          duration: Duration(seconds: 1),
          curve: Curves.elasticOut,
          alignment: Alignment.center,
          child: Container(
            width: 150,
            height: 150,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text("Samadhan",style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            scale = scale == 1 ? 1.8 : 1;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
