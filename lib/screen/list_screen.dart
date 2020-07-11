import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('real list'),
      ),
    );
  }
}