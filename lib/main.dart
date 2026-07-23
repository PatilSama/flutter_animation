import 'package:flutter/material.dart';

import 'feature/AnimatedSlide/animated_slide_ex.dart';
import 'feature/AnimatedSwitcher/AnimatedSwitcherScaleExample.dart';
import 'feature/AnimatedSwitcher/animated_switcher_ex.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home:AnimatedSwitcherScaleExample(),
    );
  }
}

