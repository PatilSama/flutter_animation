import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgroundDecoration extends StatefulWidget {
  const ForgroundDecoration({super.key});

  @override
  State<ForgroundDecoration> createState() => _ForgroundDecorationState();
}

class _ForgroundDecorationState extends State<ForgroundDecoration> {
  bool isFor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          width: 250,
          height: 250,
          foregroundDecoration: BoxDecoration(
            color: isFor ? Colors.black.withOpacity(0.5) : Colors.transparent,
          ),
          child: Image.network("https://picsum.photos/250", fit: BoxFit.cover),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isFor = !isFor;
          });
        },
      ),
    );
  }
}
