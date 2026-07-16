import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CrossFadeText extends StatefulWidget {
  const CrossFadeText({super.key});

  @override
  State<CrossFadeText> createState() => _CrossFadeTextState();
}

class _CrossFadeTextState extends State<CrossFadeText> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedCrossFade(
          firstChild: ElevatedButton(
            onPressed: () {},
            child: const Text("Login"),
          ),
          secondChild: const Icon(
            Icons.check_circle,
            size: 80,
            color: Colors.green,
          ),
          firstCurve: Curves.easeIn,
          alignment: Alignment.topRight,
          secondCurve: Curves.easeOut,
          sizeCurve: Curves.bounceOut,
          crossFadeState: isShow
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          duration: Duration(seconds: 2),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isShow = !isShow;
          });
        },
      ),
    );
  }
}
