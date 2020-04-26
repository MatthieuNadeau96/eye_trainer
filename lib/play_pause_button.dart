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
        borderRadius: BorderRadius.all(Radius.circular(20)),
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
    );
  }
}
