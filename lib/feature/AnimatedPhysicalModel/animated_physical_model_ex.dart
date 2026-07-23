import 'package:flutter/material.dart';

class AnimatedPhysicalModelEx extends StatefulWidget {
  const AnimatedPhysicalModelEx({super.key});

  @override
  State<AnimatedPhysicalModelEx> createState() =>
      _AnimatedPhysicalModelExState();
}

class _AnimatedPhysicalModelExState extends State<AnimatedPhysicalModelEx> {
  bool isRaise = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AnimatedPhysicalModel(
              color: Colors.blue,
              shadowColor: Colors.red,
              elevation: isRaise ?30:2,
              shape:BoxShape.rectangle,
              curve: Curves.easeInOut,
              borderRadius: BorderRadius.circular(isRaise?40:2),
              duration: Duration(seconds: 2),
              child: Image.network(
                "https://picsum.photos/300",
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            // AnimatedContainer(
            //   duration: const Duration(seconds: 1),
            //   width: 250,
            //   height: 150,
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //     borderRadius: BorderRadius.circular(20),
            //     shape:BoxShape.rectangle,
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.red,
            //         blurRadius: 20,
            //         spreadRadius: 2,
            //         offset: Offset(0, 10),
            //       ),
            //     ],
            //   ),
            //   child: Image.network(
            //   "https://picsum.photos/300",
            //   width: 250,
            //   height: 250,
            //   fit: BoxFit.cover,
            // ),
            // )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isRaise = !isRaise;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
