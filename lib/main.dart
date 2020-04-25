import 'package:eye_timer/countdown_timer.dart';
import 'package:eye_timer/play_pause_button.dart';
import 'package:eye_timer/soft_counter.dart';
import 'package:flutter/material.dart';
import 'package:eye_timer/soft_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pomodoro Timer',
      theme: ThemeData(
        primaryColor: Color(0xff618D7B),
        backgroundColor: Color(0xffF2F4EE),
        accentColor: Color(0xff0D1710),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: <Widget>[
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SoftButton(
                icon: Icon(
                  Icons.volume_off,
                  color: Color(0xff0D1710),
                  size: 20,
                ),
              ),
              Text(
                'Pomodoro',
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SoftButton(
                icon: Icon(
                  Icons.notifications_active,
                  color: Color(0xff0D1710),
                  size: 20,
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          CountdownTimer(),
          SizedBox(height: 20),
          Text(
            'Work',
            style: TextStyle(
              fontSize: 20,
              color: Theme.of(context).accentColor,
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SoftCounter(),
                SoftCounter(),
                SoftCounter(),
              ],
            ),
          ),
          SizedBox(height: 120),
          PlayPauseButton(
            icon: Icon(
              Icons.play_arrow,
              size: 30,
              color: Theme.of(context).accentColor,
            ),
          ),
        ],
      ),
    );
  }
}
