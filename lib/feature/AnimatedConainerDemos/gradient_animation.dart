import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientAnimation extends StatefulWidget {
  const GradientAnimation({super.key});

  @override
  State<GradientAnimation> createState() => _GradientAnimationState();
}

class _GradientAnimationState extends State<GradientAnimation> {
  bool isChange = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gradient")),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.red,
            border: BoxBorder.all(
              color: isChange ? Colors.black26 : Colors.lightBlue,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(isChange ? 50 : 10),
            // gradient: LinearGradient(
            //   // begin: isChange ? Alignment.topLeft:Alignment.bottomRight,
            //   // end: isChange?Alignment.bottomRight:Alignment.topLeft,
            //
            //   begin: isChange ? Alignment.topLeft : Alignment.bottomRight,
            //   end: isChange ? Alignment.bottomRight : Alignment.topLeft,
            //   colors: false
            //       ? [Colors.red, Colors.orange]
            //       : [Colors.blue, Colors.green, Colors.blue],
            //   // stops: [0.2,0.8],
            //   tileMode: TileMode.mirror,
            // ),
            // gradient: RadialGradient(
            //   center: Alignment.center,
            //   focal: Alignment.topLeft,
            //   focalRadius: 0.4,
            //   transform: GradientRotation(1.0),
            //   radius: 0.7,
            //   colors: isChange
            //       ? [Colors.blue, Colors.green]
            //       : [Colors.green, Colors.blue],
            // ),
            gradient: SweepGradient(
                transform: GradientRotation(isChange?0:pi),
              // startAngle: 0,
              // endAngle: 2*22/7,
              center: Alignment.center,
                colors: [
              Colors.red,
              Colors.yellow,
              Colors.green,
              Colors.blue,
              Colors.red,
            ])
          ),
          child: Center(
            child: Text("Samadhan", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isChange = !isChange;
          });
        },
      ),
    );
  }
}
