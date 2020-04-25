import 'package:flutter/material.dart';

class CountdownTimer extends StatelessWidget {
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
            color: Color(0xffDADCD6), // up one
            offset: Offset(4.0, 4.0),
            blurRadius: 8.0,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: Color(0xffffffff), // down one
            offset: Offset(-4.0, -4.0),
            blurRadius: 8.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
    );
    ;
  }
}
