import 'package:bike_parking_info/screen/home_screen.dart';
import 'package:bike_parking_info/screen/list_screen.dart';
import 'package:bike_parking_info/screen/more_screen.dart';
import 'package:bike_parking_info/screen/search_screen.dart';
import 'package:bike_parking_info/widget/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
    _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hogehoge',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.white,
        ),
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                HomeScreen(),
                SearchScreen(),
                MoreScreen(),
                ListScreen(),
                ],
            ),
            bottomNavigationBar: Bottom(),
          ),
        ),
    );
  }
}