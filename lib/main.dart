import 'dart:async';
import 'package:quiver/async.dart';

import 'package:eye_timer/count_down_timer.dart';
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

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int minutes = 0;
  bool started = false;
  bool paused = true;
  int timeForTimer = 0;
  String timeToDisplay = '';
  bool checkTimer = false;
  int _start = 20;
  int _current = 20;

  void startHandler() {
    CountdownTimer countDownTimer = CountdownTimer(
      Duration(seconds: _start),
      Duration(seconds: 1),
    );

    var sub = countDownTimer.listen(null);
    sub.onData((duration) {
      setState(() {
        _current = _start - duration.elapsed.inSeconds;
        timeToDisplay = _current.toString();
      });
    });

    sub.onDone(() {
      print("Done");
      sub.cancel();
    });
    print('pressed');
  }

  void stopHandler() {
    setState(() {
      started = false;
      paused = true;
      checkTimer = false;
    });
  }

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
          CountDownTimer(
            timeToDisplay: timeToDisplay,
          ),
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
          GestureDetector(
            onTap: () {
              startHandler();
            },
            child: PlayPauseButton(
              icon: Icon(
                Icons.play_arrow,
                size: 30,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
