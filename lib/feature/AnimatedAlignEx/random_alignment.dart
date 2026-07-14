import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RandomAlignment extends StatefulWidget {
  const RandomAlignment({super.key});

  @override
  State<RandomAlignment> createState() => _RandomAlignmentState();
}

class _RandomAlignmentState extends State<RandomAlignment> {
  // List<Alignment> positions = [
  //   Alignment.topLeft,
  //   Alignment.topCenter,
  //   Alignment.topRight,
  //
  //   Alignment.centerLeft,
  //   Alignment.center,
  //   Alignment.centerRight,
  //
  //   Alignment.bottomLeft,
  //   Alignment.bottomCenter,
  //   Alignment.bottomRight,
  // ];
  List<Alignment> positions = [
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.bottomRight,
    Alignment.bottomLeft,
  ];
  int num = 0;
  late Alignment alignment = positions[num];
  final random = Random();

  Alignment randomAlignment() {
    return Alignment(random.nextDouble() * 2 - 1, random.nextDouble() * 2 - 1);
  }

  int randomNumber() {
    return random.nextInt(9);
  }
  bool isRunning = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedAlign(
        alignment: positions[num],
        duration: Duration(seconds: 2),
        curve: Curves.ease,
        onEnd: (){
          if(!isRunning) return;
          num = (num + 1) % positions.length;
          setState(() {

          });
        },
        child: Container(width: 100, height: 100,decoration: BoxDecoration(
          shape: BoxShape.circle,
            color: Colors.green
        ),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isRunning = !isRunning;
            num = (num + 1) % positions.length;
            // alignment = randomAlignment();
            // alignment = positions[randomNumber()];
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
