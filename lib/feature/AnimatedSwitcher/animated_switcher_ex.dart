import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedSwitcherEx extends StatefulWidget {
  const AnimatedSwitcherEx({super.key});

  @override
  State<AnimatedSwitcherEx> createState() => _AnimatedSwitcherExState();
}

class _AnimatedSwitcherExState extends State<AnimatedSwitcherEx> {
  int count = 0;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSwitcher(
          duration: Duration(seconds: 2),
          child:  isFavorite
              ? const Icon(
            Icons.favorite,
            key: ValueKey("fav"),
            color: Colors.red,
            size: 80,
          )
              : const Icon(
            Icons.favorite_border,
            key: ValueKey("unfav"),
            size: 80,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          count++;
          isFavorite = !isFavorite;
        });
      }),
    );
  }
}
