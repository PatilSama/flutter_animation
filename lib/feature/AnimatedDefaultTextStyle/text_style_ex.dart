import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextStyleEx extends StatefulWidget {
  const TextStyleEx({super.key});

  @override
  State<TextStyleEx> createState() => _TextStyleExState();
}

class _TextStyleExState extends State<TextStyleEx> {
  bool isChange = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedDefaultTextStyle(
          child: Text("Samadhan"),
          curve: Curves.easeInOut,
          style: TextStyle(
            fontSize: isChange ? 40 : 20,
            color: isChange ? Colors.red : Colors.blue,
            fontWeight: isChange ? FontWeight.bold : FontWeight.normal,
            letterSpacing: isChange ? 8 : 2,
            wordSpacing: isChange ? 10 : 2,
            height: isChange ? 2 : 1.2,
            shadows: [
              Shadow(color: Colors.green, offset: Offset(2, 2),blurRadius: 3),
              Shadow(color: Colors.black54, offset: Offset(4, 4),blurRadius: 5),
            ],
          ),
          duration: Duration(seconds: 2),
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
