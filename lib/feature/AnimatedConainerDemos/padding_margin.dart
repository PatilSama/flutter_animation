import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaddingMargin extends StatefulWidget {
  const PaddingMargin({super.key});

  @override
  State<PaddingMargin> createState() => _PaddingMarginState();
}

class _PaddingMarginState extends State<PaddingMargin> {
  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Padding and Margin")),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          // margin: EdgeInsets.all(
          //   isExpand ? 50 : 10,
          // ),
          //
          // padding: EdgeInsets.all(
          //   isExpand ? 40 : 5,
          // ),
          //
          color: Colors.orange,

          width: 300,
          height: 300,
          alignment:isExpand?Alignment.topLeft:Alignment.bottomRight,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isExpand = !isExpand;
          });
        },
      ),
    );
  }
}
