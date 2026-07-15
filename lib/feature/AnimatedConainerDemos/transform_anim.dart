import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransformAnim extends StatefulWidget {
  const TransformAnim({super.key});

  @override
  State<TransformAnim> createState() => _TransformAnimState();
}

class _TransformAnimState extends State<TransformAnim> {
  bool isRotate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          width: 100,
          height: 100,
          color: Colors.blue,
          // transform: Matrix4.identity()
          //   ..scale(isRotate ? 1.5 : 1.0),
          // transform: Matrix4.identity()
          //   ..setEntry(0, 1, isRotate ? 0.4 : 0),
          // transform: Matrix4.identity()
          //   ..translate(isRotate ? 80.0 : 0.0)
          //   ..rotateZ(isRotate ? pi / 4 : 0)
          //   ..scale(isRotate ? 1.5 : 1.0),
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(isRotate ? pi / 4 : 0),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          isRotate = !isRotate;
          print("$isRotate");
        });
      }),
    );
  }
}
