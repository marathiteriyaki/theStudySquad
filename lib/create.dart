import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './active.dart';

class Create extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _CreateState();
  }
}

class _CreateState extends State<Create> {
  final barColor = const Color(0xFF1D2331);

  final orangeNeon = const Color(0xFFF79959);

  final purpleNeon = const Color(0xFFC370BE);

  final bottomNavColor = const Color(0xFF131720);

  final topNavColor = const Color(0xFF131720);

  final greenNeon = const Color(0xFF83f52c);

  int i = 0;

  //DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: barColor,
      appBar: AppBar(
        backgroundColor: topNavColor,
        title: Center(
          child: Text("Create Preset",
              style: TextStyle(
                  color: Colors.white, fontSize: 30, fontFamily: 'monospace')),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 50,
            left: 60,
            height: 100,
            width: 300,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                  side: BorderSide(color: Colors.red)),
              color: Colors.white,
              child: Text('Create Preset',
                  style: TextStyle(
                      color: barColor, fontSize: 25, fontFamily: 'monospace')),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TimerApp()),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}