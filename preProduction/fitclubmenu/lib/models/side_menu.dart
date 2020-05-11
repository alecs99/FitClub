import 'package:flutter/material.dart';
import '../main.dart';
import 'diete.dart';
import 'main_exercises.dart';
import 'package:fitclubmenu/models/diete.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                color: Colors.blueGrey,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                'http://cdn.onlinewebfonts.com/svg/img_498796.png'
                            , scale: 1),
                              fit: BoxFit.fill
                          ),
                        ),
                      ),
                      Text('Menu', style: TextStyle(fontSize: 20, color: Colors.white,), textAlign: TextAlign.center,),
                    ],
                  ),
                )
              ),
              ListTile(
                title: Text('Home', textAlign: TextAlign.center,),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)  => Home(),
                      )
                  );
                },
              ),
              ListTile(
               title: Text('All exercises', textAlign: TextAlign.center,),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)  => MainExercises(),
                      )
                  );
                },
              ),
              ListTile(
                title: Text('Diets', textAlign: TextAlign.center,),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)  => Diete(),
                      )
                  );
                },
              ),
              ListTile(
                title: Text('text3', textAlign: TextAlign.center,),
                /*
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)  => GroupEx(
                              groupTitle: "Chest"
                          )
                      )
                  );
                },

                 */
              ),
              ]
            )
            );
  }
}
