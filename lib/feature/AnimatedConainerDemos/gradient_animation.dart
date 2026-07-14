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
          duration: Duration(seconds: 2),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(isChange?100:10),
            gradient: LinearGradient(
              begin: isChange ? Alignment.topLeft:Alignment.bottomRight,
              end: isChange?Alignment.bottomRight:Alignment.topLeft,
              colors: false
                  ? [Colors.red, Colors.orange]
                  : [Colors.blue, Colors.green],
            ),
          ),
          child: Center(child: Text("Samadhan",style: TextStyle(color: Colors.white),)),
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
