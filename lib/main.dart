import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './home.dart';
import './active.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final barColor = const Color(0xFF1D2331);

  final orangeNeon = const Color(0xFFF79959);

  final purpleNeon = const Color(0xFFC370BE);

  final bottomNavColor = const Color(0xFF131720);

  final topNavColor = const Color(0xFF131720);

  List<Widget> tabs = [
    TimerApp(),
    Home(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: tabs[_currentIndex],
      backgroundColor: barColor,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: Colors.yellow,
          backgroundColor: bottomNavColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_active,
                color: Colors.white,
                size: 30,
              ),
              title: Text('StopWatch',
                  style: TextStyle(fontFamily: 'monospace', fontSize: 15)),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
              title: Text('Apps Disabled',
                  style: TextStyle(fontFamily: 'monospace', fontSize: 15)),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    ));
  }
}
