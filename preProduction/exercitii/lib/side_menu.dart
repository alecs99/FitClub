import 'package:flutter/material.dart';
import 'package:mds_project/main.dart';


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
               title: Text('Exercitii', textAlign: TextAlign.center,),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)  => MainPage(),
                      )
                  );
                },
              ),
              ListTile(
                title: Text('text2', textAlign: TextAlign.center,),
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
