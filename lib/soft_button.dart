import 'package:flutter/material.dart';

class SoftButton extends StatelessWidget {
  final icon;

  SoftButton({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      child: icon,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(50)),
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
