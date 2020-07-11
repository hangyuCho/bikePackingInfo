import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.black,
      child: Container(
        height: 50,
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
                icon: Icon(
                Icons.home,
                size: 10,
              ),
              child: Text(
                'home!!',
                style: TextStyle(
                  fontSize: 9
                ),
              ),
            ),
            Tab(
                icon: Icon(
                Icons.search,
                size: 10,
              ),
              child: Text(
                'search!!',
                style: TextStyle(
                  fontSize: 9
                ),
              ),
            ),
            Tab(
                icon: Icon(
                Icons.save_alt,
                size: 10,
              ),
              child: Text(
                'save_alt!!',
                style: TextStyle(
                  fontSize: 9
                ),
              ),
            ),
            Tab(
                icon: Icon(
                Icons.list,
                size: 10,
              ),
              child: Text(
                'list!!',
                style: TextStyle(
                  fontSize: 9
                ),
              ),
            ),
          ],
        ),
      )
    );

  }
}