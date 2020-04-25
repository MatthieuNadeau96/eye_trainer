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
              SoftButton(),
              Text('Pomodoro',
                  style: TextStyle(
                    fontSize: 26,
                  )),
              SoftButton(),
            ],
          )
        ],
      ),
    );
  }
}
