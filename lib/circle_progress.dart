import 'package:flutter/material.dart';

class CircleProgress extends StatelessWidget {
  final displayTime;
  CircleProgress({this.displayTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          displayTime,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
