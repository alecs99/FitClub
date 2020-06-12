import 'package:fitclubmenu/models/main_exercises.dart';
import 'package:flutter/material.dart';

import 'models/diete.dart';
import 'optiuni.dart';
import 'package:fitclubmenu/models/side_menu.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    final String text =
        'FitClub it is the app that help you have a healthy life. '
        'We created the app out of necessity because we wanted to have all the exercies and diets in one place.'
        'Fitclub brings you the best diets and exercices from the internet all in one place.';

    final String functionalites =
        '-The diet calculator gives you detailed info about what you have to eat every day, '
        'created depending on the age, height, weight and the goal set: '
        'Weight loss, muscle gain or to keep your shape  \n'
        '-The exercices section gives you precise videos for every muscle group.'
        'Every video comes also with a short description and the benefits \n'
        '-The calories calculator gives you the option to add what you eat in a day'
        'and gives you an aproximation of calories.';
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
        ),
        body: ListView(
              children: <Widget>[
                new ListTile(
                  title: Text('Welcome to Fitclub', style: TextStyle(fontSize: 25, color: Colors.blue, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                ),
                new Container(
                  width: 230.00,
                  height: 220.00,
                  decoration: new BoxDecoration(
                  image: new DecorationImage(
                  image: ExactAssetImage('assets/fitperson.png'),
                  fit: BoxFit.fitHeight,
                  ),

                ),
                ),
                new Container(
                  width: 100,
                  height: 150,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
                  child: new ListTile(
                    title: Text('Short Description', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                    subtitle: Text(text, style: TextStyle(fontSize: 13, color: Colors.white)),
                   ),
                ),
                new Container(
                  width: 100,
                  height: 230,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
                  child: new ListTile(
                    title: Text('Main functionalites', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                    subtitle: Text(functionalites, style: TextStyle(fontSize: 13, color: Colors.white)),
                  ),
                )
              ]
         ),
        );
  }
}

