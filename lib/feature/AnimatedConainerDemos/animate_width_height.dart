import 'package:flutter/material.dart';

class AnimateWidthHeight extends StatefulWidget {
  const AnimateWidthHeight({super.key});

  @override
  State<AnimateWidthHeight> createState() => _AnimateWidthHeightState();
}

class _AnimateWidthHeightState extends State<AnimateWidthHeight> {
  bool isExpand = false;
  bool isRunning = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Width And Height")),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          width: isExpand ? 200 : 300,
          height: isExpand ? 200 : 300,
          // constraints: BoxConstraints(
          //   // minWidth: isExpand ? 300 : 100,
          //   maxWidth: isExpand ? 300 : 100,
          //   // minHeight: isExpand ? 300 : 100,
          //   maxHeight: isExpand ? 300 : 100,
          // ),
          onEnd: (){
            if (!isRunning) return;

            setState(() {
              isExpand = !isExpand;
            });
          },
          curve: Curves.ease,
          color: isExpand ?Colors.green:Colors.yellow,
          child: Center(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (isRunning) {
              // Stop animation
              isRunning = false;
            } else {
              // Start animation
              isRunning = true;
              isExpand = !isExpand; // Trigger the first animation
            }
          });
        },
      ),
    );
  }
}
