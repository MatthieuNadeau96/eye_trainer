import 'package:eye_timer/circle_progress.dart';
import 'package:flutter/material.dart';

class CountDownTimer extends StatelessWidget {
  final timeToDisplay;
  CountDownTimer({this.timeToDisplay});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(250)),
        boxShadow: [
          BoxShadow(
            color: Color(0xffDADCD6),
            offset: Offset(6.0, 6.0),
            blurRadius: 10.0,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: Color(0xffffffff),
            offset: Offset(-6.0, -6.0),
            blurRadius: 10.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: CircleProgress(
        displayTime: timeToDisplay,
      ),
    );
  }
}
