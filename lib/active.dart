import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'globals.dart' as globals;
import 'dart:async';

class TimerApp extends StatefulWidget {
  @override
  _TimerAppState createState() => _TimerAppState();
}

class _TimerAppState extends State<TimerApp> {
  final barColor = const Color(0xFF1D2331);

  final orangeNeon = const Color(0xFFF79959);

  final purpleNeon = const Color(0xFFC370BE);

  final bottomNavColor = const Color(0xFF131720);

  final topNavColor = const Color(0xFF131720);

  static const duration = const Duration(seconds: 1);

  int secondsPassed = 0;
  bool isActive = false;
  String message6 = "Disabled Notif.: OFF";
  String message0 = "";

  Timer timer;

  void handleTick() {
    if (isActive) {
      setState(() {
        secondsPassed = secondsPassed + 1;
      });
    }
  }

  void saturday(bool g) {
    setState(() {
      if (g) {
        message6 = "Disabled Notif.: ON";
        globals.val6 = true;
        SystemChrome.setEnabledSystemUIOverlays([]);
      } else {
        message6 = "Disabled Notif.: OFF";
        globals.val6 = false;
        SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
      }
    });
  }

  void bruh(bool g) {
    setState(() {
      if (g) {
        message0 = "Disabled Notif.: ON";
        globals.val6 = true;
      } else {
        message0 = "Disabled Notif.: OFF";
        globals.val6 = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (timer == null) {
      timer = Timer.periodic(duration, (Timer t) {
        handleTick();
      });
    }
    int seconds = secondsPassed % 60;
    int minutes = secondsPassed ~/ 60;
    int hours = secondsPassed ~/ (60 * 60);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: barColor,
          appBar: AppBar(
            backgroundColor: topNavColor,
            title: Center(
                child: Text('Procrastination App',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'monospace'))),
          ),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    LabelText(
                        label: 'HRS', value: hours.toString().padLeft(2, '0')),
                    LabelText(
                        label: 'MIN',
                        value: minutes.toString().padLeft(2, '0')),
                    LabelText(
                        label: 'SEC',
                        value: seconds.toString().padLeft(2, '0')),
                  ],
                ),
                SizedBox(height: 60),
                Container(
                  width: 200,
                  height: 47,
                  margin: EdgeInsets.only(top: 30),
                  child: RaisedButton(
                    color: purpleNeon,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Text(
                      isActive ? 'STOP' : 'START',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        isActive = !isActive;
                        SystemChrome.setEnabledSystemUIOverlays([]);
                      });
                    },
                  ),
                ),
                Container(
                  child: RaisedButton(
                    color: purpleNeon,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Text(
                      isActive ? 'RESET' : 'RESET',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        isActive = false;
                        secondsPassed = 0;
                        SystemChrome.setEnabledSystemUIOverlays(
                            SystemUiOverlay.values);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class LabelText extends StatelessWidget {
  LabelText({this.label, this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.teal,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            '$value',
            style: TextStyle(
                color: Colors.white, fontSize: 55, fontWeight: FontWeight.bold),
          ),
          Text(
            '$label',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
