import 'package:flutter/material.dart';

class SoftButton extends StatelessWidget {
  final icon;

  SoftButton({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      child: Icon(
        icon,
      ),
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
            )
          ]),
    );
  }
}
