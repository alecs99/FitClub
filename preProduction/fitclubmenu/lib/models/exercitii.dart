import 'package:flutter/material.dart';
import 'all_ex.dart';

import 'muscle_menu.dart';
import 'side_menu.dart';


class Exercitii extends StatefulWidget {
  @override
  _ExercitiiState createState() => _ExercitiiState();
}

class _ExercitiiState extends State<Exercitii> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ALL EXERCISES', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blueGrey,
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
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
