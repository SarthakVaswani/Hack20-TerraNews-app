import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hack20/screens/dashboard_screen.dart';
import 'package:hack20/screens/tabbed.dart';
import 'screens/dashboard_screen.dart';
import 'package:flutter/widgets.dart';
import 'screens/news_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home(),
        routes: {
          NewsDetailsScreen.routeName: (ctx) => NewsDetailsScreen(),
        },
        theme: ThemeData(
          accentColor: Colors.white,
          scaffoldBackgroundColor: Color(0XFF1C1987),
        ));
  }
}

class MyFlutterApp {
  MyFlutterApp._();

  static const _kFontFam = 'MyFlutterApp';
  static const _kFontPkg = null;

  static const IconData news =
      IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final tabs = [
    DashboardScreen(),
    TabbedNews(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: tabs[_currentIndex]),
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0XFFE3E4EE),
        backgroundColor: Color(0XFF1C1987),
        buttonBackgroundColor: Colors.white,
        height: 50,
        items: <Widget>[
          Icon(MyFlutterApp.news),
          Icon(Icons.explore),
        ],
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
