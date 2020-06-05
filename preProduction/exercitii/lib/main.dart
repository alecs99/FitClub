import 'package:flutter/material.dart';
import 'package:mds_project/all_ex.dart';

import './all_ex.dart';
import 'muscle_menu.dart';
import 'side_menu.dart';

void main()  => runApp(MainPage());

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ALL EXERCISES', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        drawer: SideMenu(),
        body: new ListView(
          children: <Widget>[
            MuscleMenu(),
            Container(
                height: 500,
                child: Exercises()
            )
          ],
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
