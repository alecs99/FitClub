import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'side_menu.dart';

class ExerciseDetails extends StatefulWidget {
  final exerciseTitle;
  final exerciseDescription;
  final exerciseBenefit1;
  final exerciseBenefit2;
  final exerciseBenefit3;
  final exerciseVideoUrl;

  ExerciseDetails( {
    this.exerciseTitle,
    this.exerciseDescription,
    this.exerciseBenefit1,
    this.exerciseBenefit2,
    this.exerciseBenefit3,
    this.exerciseVideoUrl,
  });

  @override
  _ExerciseDetailsState createState() => _ExerciseDetailsState();
}

class _ExerciseDetailsState extends State<ExerciseDetails> {
  @override
  Widget build(BuildContext context) {
    String videoUrl = widget.exerciseVideoUrl;
    YoutubePlayerController _controller;
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoUrl),
        flags: YoutubePlayerFlags(autoPlay: false)
    );

    return MaterialApp(
        home: Scaffold(
          drawer: SideMenu(),
          appBar: AppBar(
            centerTitle: true,
            title: Text(widget.exerciseTitle, style: TextStyle(color: Colors.white,), textAlign: TextAlign.center,),
            backgroundColor: Colors.blue,
          ),
          body: ListView(
            children: <Widget>[
              new Container(
                  height: 200,
                  color: Colors.blue,
                  margin: EdgeInsets.all(10),
                  child: YoutubePlayer(
                    controller: _controller
                  ),
              ),
              new ListTile(
                title: Text('DESCRIPTION', style: TextStyle(fontSize: 15, color: Colors.blue)),
                subtitle: Text(widget.exerciseDescription, style: TextStyle(color: Colors.black)),
              ),
              new Container(
                width: 100,
                height: 200,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                color: Colors.blue,
                child: new ListView(
                  children: <Widget>[
                    Text('BENEFITS', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                    ListTile(
                        title: Text(widget.exerciseBenefit1, style: TextStyle(fontSize: 10, color: Colors.white)),
                        leading: Icon(Icons.filter_tilt_shift, color: Colors.white,)
                    ),
                    ListTile(
                      title: Text(widget.exerciseBenefit2, style: TextStyle(fontSize: 10, color: Colors.white)),
                      leading: Icon(Icons.filter_tilt_shift, color: Colors.white),
                    ),
                    ListTile(
                      title: Text(widget.exerciseBenefit3, style: TextStyle(fontSize: 10, color: Colors.white)),
                      leading: Icon(Icons.filter_tilt_shift, color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}