import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'globals.dart' as globals;

class Home extends StatefulWidget{
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home>{

  final barColor = const Color(0xFF1D2331);

  final orangeNeon = const Color(0xFFF79959);

  final purpleNeon = const Color(0xFFC370BE);

  final bottomNavColor = const Color(0xFF131720);

  final topNavColor = const Color(0xFF131720);

  String message0 = "Disabled Notif.: OFF";
  String message1 = "Disabled Notif.: OFF";
  String message2 = "Disabled Notif.: OFF";
  String message3 = "Disabled Notif.: OFF";
  String message4 = "Disabled Notif.: OFF";
  String message5 = "Disabled Notif.: OFF";
  String message6 = "Disabled Notif.: OFF";

  //DateTime _dateTime = DateTime.now();


  void sunday(bool a) {
    setState(() {
      if (a) {
        message0 = "Disabled Notif.: ON";
        globals.val0 = true;
      } else {
        message0 = "Disabled Notif.: OFF";
        globals.val0 = false;
      }
    });
  }

  void monday(bool b) {
    setState(() {
      if (b) {
        message1 = "Disabled Notif.: ON";
        globals.val1 = true;
      } else {
        message1 = "Disabled Notif.: OFF";
        globals.val1 = false;
      }
    });
  }

  void tuesday(bool c) {
    setState(() {
      if (c) {
        message2 = "Disabled Notif.: ON";
        globals.val2 = true;
      } else {
        message2 = "Disabled Notif.: OFF";
        globals.val2 = false;
      }
    });
  }

  void wednesday(bool d) {
    setState(() {
      if (d) {
        message3 = "Disabled Notif.: ON";
        globals.val3 = true;
      } else {
        message3 = "Disabled Notif.: OFF";
        globals.val3 = false;
      }
    });
  }

  void thursday(bool e) {
    setState(() {
      if (e) {
        message4 = "Disabled Notif.: ON";
        globals.val4 = true;
      } else {
        message4 = "Disabled Notif.: OFF";
        globals.val4 = false;
      }
    });
  }

  void friday(bool f) {
    setState(() {
      if (f) {
        message5 = "Disabled Notif.: ON";
        globals.val5 = true;
      } else {
        message5 = "Disabled Notif.: OFF";
        globals.val5 = false;
      }
    });
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

  @override
    Widget build(BuildContext context){
      return Scaffold(
        backgroundColor: barColor,
        appBar: AppBar(
          backgroundColor: topNavColor,
          title: Center(
            child: Text("App Notifications",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'monospace')),
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              SwitchListTile(
                value: globals.val0,
                onChanged: (bool a) => sunday(a),
                activeColor: orangeNeon,
                title: Text(
                  'Instagram',
                  style:
                      TextStyle(fontFamily: 'monospace', color: Colors.white),
                ),
                subtitle: Text(
                  message0,
                  style: TextStyle(fontFamily: 'monospace', color: purpleNeon),
                ),
              ),
              SwitchListTile(
                value: globals.val1,
                onChanged: (bool b) => monday(b),
                activeColor: orangeNeon,
                title: Text(
                  'Facebook',
                  style:
                      TextStyle(fontFamily: 'monospace', color: Colors.white),
                ),
                subtitle: Text(
                  message1,
                  style: TextStyle(fontFamily: 'monospace', color: purpleNeon),
                ),
              ),
              SwitchListTile(
                value: globals.val2,
                onChanged: (bool c) => tuesday(c),
                activeColor: orangeNeon,
                title: Text(
                  'SnapChat',
                  style:
                      TextStyle(fontFamily: 'monospace', color: Colors.white),
                ),
                subtitle: Text(
                  message2,
                  style: TextStyle(fontFamily: 'monospace', color: purpleNeon),
                ),
              ),
              SwitchListTile(
                value: globals.val3,
                onChanged: (bool d) => wednesday(d),
                activeColor: orangeNeon,
                title: Text(
                  'Gmail',
                  style:
                      TextStyle(fontFamily: 'monospace', color: Colors.white),
                ),
                subtitle: Text(
                  message3,
                  style: TextStyle(fontFamily: 'monospace', color: purpleNeon),
                ),
              ),
              SwitchListTile(
                value: globals.val4,
                onChanged: (bool e) => thursday(e),
                activeColor: orangeNeon,
                title: Text(
                  'TikTok',
                  style:
                      TextStyle(fontFamily: 'monospace', color: Colors.white),
                ),
                subtitle: Text(
                  message4,
                  style: TextStyle(fontFamily: 'monospace', color: purpleNeon),
                ),
              ),
              SwitchListTile(
                value: globals.val5,
                onChanged: (bool f) => friday(f),
                activeColor: orangeNeon,
                title: Text(
                  'Twitter',
                  style:
                      TextStyle(fontFamily: 'monospace', color: Colors.white),
                ),
                subtitle: Text(
                  message5,
                  style: TextStyle(fontFamily: 'monospace', color: purpleNeon),
                ),
              ),
              SwitchListTile(
                value: globals.val6,
                onChanged: (bool g) => saturday(g),
                activeColor: orangeNeon,
                title: Text(
                  "ALL APPS",
                  style:
                      TextStyle(fontFamily: 'monospace', color: Colors.white),
                ),
                subtitle: Text(
                  message6,
                  style: TextStyle(fontFamily: 'monospace', color: purpleNeon),
                ),
              ),
            ],
          ),
        ),
      );
        
    }
}