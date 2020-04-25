import 'package:flutter/material.dart';

class SoftCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(50)),
        boxShadow: [
          BoxShadow(
            color: Color(0xffDADCD6), // up one
            offset: Offset(2.0, 2.0),
            blurRadius: 2.0,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: Color(0xffffffff), // down one
            offset: Offset(-2.0, -2.0),
            blurRadius: 2.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
    );
  }
}
