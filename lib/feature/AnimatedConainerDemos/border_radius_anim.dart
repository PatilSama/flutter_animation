import 'package:flutter/material.dart';

class BorderRadiusAnim extends StatefulWidget {
  const BorderRadiusAnim({super.key});

  @override
  State<BorderRadiusAnim> createState() => _BorderRadiusAnimState();
}

class _BorderRadiusAnimState extends State<BorderRadiusAnim> {
  bool isCircle = false;
  bool isRunning = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Border Radius")),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          width: 200,
          height: 200,
          onEnd: () {
            if (!isRunning) return;
            setState(() {
              isCircle = !isCircle;
            });
          },
          decoration: BoxDecoration(
            color: Colors.red.shade400,
            boxShadow: [
              BoxShadow(
                color: isCircle ? Colors.red.withOpacity(0.5) : Colors.black26,
                blurRadius: isCircle ? 30 : 5,
                spreadRadius: isCircle ? 10 : 2,
                offset: Offset(isCircle ? 15 : 5, isCircle ? 15 : 5),
              ),
              BoxShadow(
                color: isCircle ? Colors.black26 : Colors.yellow,
                blurRadius: isCircle ? 30 : 5,
                spreadRadius: isCircle ? 10 : 2,
                offset: Offset(isCircle ? -15 : -5, isCircle ? -15 : 5),
              ),
            ],
            // All Border make in circle.
            // borderRadius: BorderRadius.circular(isCircle ? 100:0),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(isCircle ? 100 : 0),
              topRight: Radius.circular(isCircle ? 0 : 100),
              bottomLeft: Radius.circular(isCircle ? 0 : 100),
              bottomRight: Radius.circular(isCircle ? 100 : 0),
            ),
            border: Border.all(
              color: isCircle ? Colors.blue : Colors.yellow,
              width: 4,
              style: BorderStyle.solid,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (isRunning) {
              isRunning = false;
            } else {
              isRunning = true;
              isCircle = !isCircle;
            }
          });
        },
      ),
    );
  }
}
