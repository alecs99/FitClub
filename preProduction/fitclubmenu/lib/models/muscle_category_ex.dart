import 'package:flutter/material.dart';
import 'all_ex.dart';
import 'exercise_details.dart';
import 'side_menu.dart';

class GroupEx extends StatefulWidget {
  final groupTitle;
  GroupEx(
      {
    this.groupTitle,
    }
  );

  @override
  _GroupExState createState() => _GroupExState();
}

class _GroupExState extends State<GroupEx> {

  @override
  Widget build(BuildContext context) {
    var muscleExercises = exercisesList.where((exercisesList) => exercisesList['MuscleName'] == widget.groupTitle).toList();
    return Scaffold(
        drawer: SideMenu(),
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.groupTitle, style: TextStyle(color: Colors.white,)),
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
            children: <Widget>[
              Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(10),
                    itemCount: muscleExercises.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                              width: 330,
                              child: ListTile(
                                onTap: () => Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => ExerciseDetails(
                                          exerciseTitle: muscleExercises[index]['titleName'],
                                          exerciseDescription: muscleExercises[index]['descriptionEx'],
                                          exerciseBenefit1: muscleExercises[index]['benefitOne'],
                                          exerciseBenefit2: muscleExercises[index]['benefitTwo'],
                                          exerciseBenefit3: muscleExercises[index]['benefitThree'],
                                          exerciseVideoUrl: muscleExercises[index]['videoUrlName'],
                                        ),
                                    )
                                ),
                                contentPadding: EdgeInsets.only(top: 10, bottom: 10),
                                title: Text('${muscleExercises[index]['titleName']}', style: TextStyle(fontSize: 15, color: Colors.blueGrey)),
                                subtitle: Text('${muscleExercises[index]['descriptionEx']}', style: TextStyle(color: Colors.black),maxLines: 2, ),
                                leading: Icon(Icons.fitness_center, color: Colors.black),
                                trailing: Icon(Icons.arrow_forward, color: Colors.black),
                              )
                          );
                    },
                  )
              )
            ],
        )
    );
  }
}

