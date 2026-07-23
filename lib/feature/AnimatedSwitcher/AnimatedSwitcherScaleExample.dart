import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedSwitcherScaleExample extends StatefulWidget {
  const AnimatedSwitcherScaleExample({super.key});

  @override
  State<AnimatedSwitcherScaleExample> createState() =>
      _AnimatedSwitcherScaleExampleState();
}

class _AnimatedSwitcherScaleExampleState
    extends State<AnimatedSwitcherScaleExample> {
  int count = 0;
  bool run = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSwitcher(

          duration: Duration(seconds: 1),
          transitionBuilder: (child, animation) {
            return ScaleTransition(scale: Tween<double>(begin: 0.5,end: 1.0).animate(animation), child: child);
          },
          child: Text(
            "$count",
            key: ValueKey(count), // Important!
            style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {

            run = !run;
            if (run) {
              while (run) {
                await Future.delayed(const Duration(seconds: 1));

                if (!mounted) return;

                setState(() {
                  count++;
                });
              }
            }

        },
      ),
    );
  }
}
