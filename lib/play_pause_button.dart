import 'package:flutter/material.dart';

class PlayPauseButton extends StatelessWidget {
  final icon;

  PlayPauseButton({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      child: icon,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(50)),
        boxShadow: [
          BoxShadow(
            color: Color(0xffDADCD6), // up one
            offset: Offset(4.0, 4.0),
            blurRadius: 5.0,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: Color(0xffffffff), // down one
            offset: Offset(-4.0, -4.0),
            blurRadius: 5.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
    );
  }
}
