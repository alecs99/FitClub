import 'package:fitclubmenu/models/exercitii.dart';
import 'package:flutter/material.dart';

import 'models/diete.dart';
import 'optiuni.dart';


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
    List<Optiuni> optiuni = [
      Optiuni('Generator diete in functie de obiectiv', 'assets/mancare.png'),
      Optiuni('Videoclipuri pentru exercitii', 'assets/gantera.png'),
      Optiuni('Calculator calorii in functie de alimentele consumate', 'assets/mancare.png')
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text('Acasa'),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: optiuni.length,
            itemBuilder: (context, index){
              return Card(
                child: ListTile(
                  onTap: (){
                    if(index == 0){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Diete()),
                    );
                    }
                    else if(index == 1){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Exercitii()),
                      );
                    }
                    else if(index == 2){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Diete()),
                      );
                    }
                  },
                  title: Text(optiuni[index].optiune),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(optiuni[index].caleFisier),
                    backgroundColor: Colors.transparent,
                  )
                ),

              );


      }
    ),
    );


  }
}

