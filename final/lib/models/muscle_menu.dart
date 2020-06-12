import 'package:flutter/material.dart';
import 'muscle_category_ex.dart';

class MuscleMenu extends StatefulWidget {
  @override
  _MuscleMenuState createState() => _MuscleMenuState();
}

class _MuscleMenuState extends State<MuscleMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Center(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    color: Colors.white,
                    child:  ListTile(
                        title: Text('Chest', style: TextStyle(fontSize: 15, color: Colors.blue), textAlign: TextAlign.center),
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
                    ),
                  )
              ),
              Center(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.white,
                    width: 100,
                    child:  ListTile(
                      title: Text('Back', style: TextStyle(fontSize: 15, color: Colors.blue), textAlign: TextAlign.center,),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)  => GroupEx(
                                    groupTitle: "Back"
                                )
                            )
                        );
                      },
                    ),
                  )
              ),
              Center(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width:100,
                    color: Colors.white,
                    child:  ListTile(
                      title: Text('Biceps', style: TextStyle(fontSize: 15, color: Colors.blue), textAlign: TextAlign.center,),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)  => GroupEx(
                                    groupTitle: "Biceps"
                                )
                            )
                        );
                      },
                    ),
                  )
              ),
              Center(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    color: Colors.white,
                    child:  ListTile(
                      title: Text('Triceps', style: TextStyle(fontSize: 15, color: Colors.blue), textAlign: TextAlign.center,),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)  => GroupEx(
                                    groupTitle: "Triceps"
                                )
                            )
                        );
                      },
                    ),
                  )
              ),
              Center(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    color: Colors.white,
                    child:  ListTile(
                      title: Text('Shoulders', style: TextStyle(fontSize: 15, color: Colors.blue), textAlign: TextAlign.center,),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)  => GroupEx(
                                    groupTitle: "Shoulders"
                                )
                            )
                        );
                      },
                    ),
                  )
              ),
              Center(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    color: Colors.white,
                    child:  ListTile(
                      title: Text('Legs', style: TextStyle(fontSize: 15, color: Colors.blue), textAlign: TextAlign.center,),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)  => GroupEx(
                                    groupTitle: "Legs"
                                )
                            )
                        );
                      },
                    ),
                  )
              ),
            ]
        )
    );
  }
}
