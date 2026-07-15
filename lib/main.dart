import 'package:flutter/material.dart';
import 'feature/AnimatedAlignEx/animated_Align_one.dart';
import 'feature/AnimatedAlignEx/random_alignment.dart';
import 'feature/AnimatedConainerDemos/animate_width_height.dart';
import 'feature/AnimatedConainerDemos/border_radius_anim.dart';
import 'feature/AnimatedConainerDemos/forground_decoration.dart';
import 'feature/AnimatedConainerDemos/gradient_animation.dart';
import 'feature/AnimatedConainerDemos/padding_margin.dart';
import 'feature/AnimatedConainerDemos/transform_anim.dart';

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
      home:ForgroundDecoration(),
    );
  }
}

