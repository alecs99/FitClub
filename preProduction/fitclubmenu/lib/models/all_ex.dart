import 'package:flutter/material.dart';
import 'exercise_details.dart';


var exercisesList = [ {
  "titleName": "Dumbbell Bench Press",
  "descriptionEx": "The dumbbell bench press is a mainstay of workout enthusiasts worldwide. It’s a classic move for building a bigger, stronger chest. ",
  "MuscleName": "Chest",
  "benefitOne": 'Builds bigger pectorals',
  "benefitTwo": 'Also works the triceps and deltoids, particularly the front heads',
  "benefitThree": 'One side can’t compensate for the other, as in the barbell bench press',
  "videoUrlName" : 'https://www.youtube.com/watch?v=Vc63DPUoA40'
  },
  {
    "titleName": "Pushups",
    "descriptionEx": "The push-up is a popular bodyweight exercise that is commonly used in military and tactical physical fitness tests. ",
    "MuscleName": "Chest",
    "benefitOne": 'Strengthens the chest, triceps, shoulders, and abdominals',
    "benefitTwo": 'Increases core strength and hip stability',
    "benefitThree": 'Easy to regress or progress by raising or lowering torso',
    "videoUrlName" :  'https://www.youtube.com/watch?v=IODxDxX7oi4'
  },
  {
    "titleName": "Dumbbell chest fly ",
    "descriptionEx": "The dumbbell chest fly is a popular exercise that targets the pectoral or chest muscles. It attempts to isolate the chest muscles, stretching and contracting them while limiting involvement of the shoulders. ",
    "MuscleName": "Chest",
    "benefitOne": 'Works the chest muscles differently than presses',
    "benefitTwo": 'Great accessory movement on chest day',
    "benefitThree": 'Effective chest training even with relatively light weight',
    "videoUrlName" :  'https://www.youtube.com/watch?v=QwuUZ5wgQOk'
  },
  {
    "titleName": "Weighted Pull Ups",
    "descriptionEx": "The weighted pull-up is a more advanced variation of the pull-up exercise, in which the lifter adds extra weight to their body.",
    "MuscleName": "Back",
    "benefitOne": 'Strengthens the muscles of the lats (latissimus dorsi), biceps, upper back',
    "benefitTwo": 'Can help boost your overall pull-up numbers',
    "benefitThree": 'Heavy, low-rep sets activate different types of muscle fibers.',
    "videoUrlName" :  'https://www.youtube.com/watch?v=WXMKjV11lAk'
  },
  {
    "titleName": "One-Arm Dumbbell Row",
    "descriptionEx": "The single-arm bench dumbbell row is a popular exercise for building the latissimus dorsi, or lat, muscles of the back. ",
    "MuscleName": "Back",
    "benefitOne": 'Builds bigger lats',
    "benefitTwo": 'Allows you to focus on one lat at time',
    "benefitThree": 'Permits better range of motion than the barbell curl',
    "videoUrlName" :  'https://www.youtube.com/watch?v=PgpQ4-jHiq4'
  },
  {
    "titleName": "Hyperextensions",
    "descriptionEx": "The back extension is an exercise used to build lower back strength that also targets the hamstrings and glutes.",
    "MuscleName": "Back",
    "benefitOne": 'Builds size and strength in the hamstrings and glutes',
    "benefitTwo": 'Increases lower back strength and muscular endurance',
    "benefitThree": 'Can be progressed by holding weights or adding band resistance',
    "videoUrlName" :  'https://www.youtube.com/watch?v=qtjJUWCnDyE'
  },
  {
    "titleName": "Hammer Curls",
    "descriptionEx": "This curl is performed simultaneously with dumbbells but without wrist supination. Throughout each rep, the wrists remain neutral, like a carpenter hammering a nail.",
    "MuscleName": "Biceps",
    "benefitOne": 'Works not only the biceps but also the brachialis and brachioradialis',
    "benefitTwo": 'Less stress on the wrists compared with supinating curls',
    "benefitThree": 'Lift more weight without having to supinate',
    "videoUrlName" :  'https://www.youtube.com/watch?v=0IAM2YtviQY'
  },
  {
    "titleName": "EZ-Bar Curl",
    "descriptionEx": "The standing EZ-bar curl is an immensely popular exercise targeting the biceps. It is commonly performed for moderate to high reps as part of an upper body or arms-focused workout.",
    "MuscleName": "Biceps",
    "benefitOne": 'Builds size and strength in biceps',
    "benefitTwo": 'Easy to make more difficult by controlling tempo or adding pauses',
    "benefitThree": 'Many lifters find the EZ-bar easier on the wrists, elbows, and shoulders than a straight bar',
    "videoUrlName" :  'https://www.youtube.com/watch?v=S_i3SEVgKWU'
  },
  {
    "titleName": "Spider Curl",
    "descriptionEx": "The EZ-bar spider curl is an exercise targeting the biceps and performed face down on either an incline bench or on the flat side of a preacher bench. ",
    "MuscleName": "Biceps",
    "benefitOne": 'Adds size and definition to the biceps',
    "benefitTwo": 'Positioning on the incline bench helps isolate the biceps and enforce strict form',
    "benefitThree": 'Great burnout movement on arm day',
    "videoUrlName" :  'https://www.youtube.com/watch?v=TVjOooXvzO8'
  },
  {
    "titleName": "Dips - Triceps Version",
    "descriptionEx": "The triceps dip is a machine version of an exercise that many lifters perform using parallel bars or two parallel benches. The machine is found in many gyms.",
    "MuscleName": "Triceps",
    "benefitOne": 'Builds muscle and strength in the triceps',
    "benefitTwo": 'Resistance can be added or subtracted easily',
    "benefitThree": 'Easy to learn and master',
    "videoUrlName" :  'https://www.youtube.com/watch?v=WNMqN2O2MSs'
  },
  {
    "titleName": "Decline EZ Bar Triceps Extension",
    "descriptionEx": "The decline EZ-bar skullcrusher is an upper body isolation exercise targeting the triceps.",
    "MuscleName": "Triceps",
    "benefitOne": 'Builds size and strength in triceps',
    "benefitTwo": 'Engages core and lower for stabilization and maintaining position in the decline',
    "benefitThree": 'The lower the incline, the more difficult the exercise becomes without adding weight',
    "videoUrlName" :  'https://www.youtube.com/watch?v=WRNpSaKrKjM'
  },
  {
    "titleName": "Dumbbell Floor Press",
    "descriptionEx": "The dumbbell floor press limits the range of motion you would achieve with a regular dumbbell bench press, but still targets the chest, triceps, and anterior delts.",
    "MuscleName": "Triceps",
    "benefitOne": 'Pressing from the floor with neutral grip can take the stress off the shoulder joint',
    "benefitTwo": 'Can overload and focus on strength in the top half of the press, as well as the lockout.',
    "benefitThree": 'Takes your legs out of the movement, giving all the responsibility to your core and upper body to move the weight efficiently and build strength.',
    "videoUrlName" :  'https://www.youtube.com/watch?v=i31H99CrqUg'
  },
  {
    "titleName": "Single-Arm Linear Jammer",
    "descriptionEx": "The single-arm linear jammer is an explosive pressing movement performed utilizing an angled barbell anchored at floor level in a landmine device.",
    "MuscleName": "Shoulders",
    "benefitOne": 'Intense stabilization challenge to the core',
    "benefitTwo": 'Trains eccentric strength in shoulder muscles',
    "benefitThree": 'Neutral grip of single-arm press may be more shoulder friendly than barbell',
    "videoUrlName" :  'https://www.youtube.com/watch?v=ZPvOq5BUboI'
  },
  {
    "titleName": "Side Laterals to Front Raise",
    "descriptionEx": "The dumbbell lateral to front raise is a dumbbell complex that combines two exercises that build and strengthen the middle deltoids and the anterior deltoids of the shoulders. ",
    "MuscleName": "Shoulders",
    "benefitOne": 'Builds size in shoulders',
    "benefitTwo": 'Prolonged muscle time under tension',
    "benefitThree": 'Great burnout on shoulder day or time-efficient shoulder pump in any workout',
    "videoUrlName" :  'https://www.youtube.com/watch?v=LT1Eo-q58yg'
  },
  {
    "titleName": "Clean and Press",
    "descriptionEx": "The clean and press is a full-body lift comprised of two movements: the clean, where the bar is pulled from the floor and caught in the front rack position in three pulls or phases, followed by the overhead press.",
    "MuscleName": "Shoulders",
    "benefitOne": 'Trains speed and power for athletic performance',
    "benefitTwo": 'Cleaning between each rep of multiple presses is a strength and conditioning challenge like no other',
    "benefitThree": 'Great move for full-body strength and power',
    "videoUrlName" :  'https://www.youtube.com/watch?v=zCEj0d3TatI'
  },
  {
    "titleName": "Single-Leg Press",
    "descriptionEx": "The single-leg leg press is an exercise targeting the quadriceps one leg at a time. Many lifters prefer the leg press to squatting for several reasons, including the perception that it’s safer for the spine.",
    "MuscleName": "Legs",
    "benefitOne": 'Builds stronger, more muscular quads',
    "benefitTwo": 'Using one leg at time allows for heightened focus',
    "benefitThree": 'Also recruits helps from the hamstrings and glutes',
    "videoUrlName" :  'https://www.youtube.com/watch?v=3R0SOJ3alTA'
  },
  {
    "titleName": "Barbell Deadlift",
    "descriptionEx": "The barbell deadlift is a compound exercise used to develop overall strength and size in the posterior chain. It is a competition lift in the sport of powerlifting, but is also considered a classic benchmark of overall strength. ",
    "MuscleName": "Legs",
    "benefitOne": 'Builds core strength and stability',
    "benefitTwo": 'Can be beneficial even at light or moderate weights',
    "benefitThree": 'If grip is a limitation, it can be performed with a mixed grip or using straps',
    "videoUrlName" :  'https://www.youtube.com/watch?v=G13343CGcPs'
  },
  {
    "titleName": "Smith Machine Calf Raise",
    "descriptionEx": "The Smith machine standing calf raise is a machine-based exercise targeting the muscles of the calves, particularly the gastrocnemius or upper calf muscle. ",
    "MuscleName": "Legs",
    "benefitOne": 'The bar moves on a track making it easier to get into position and control',
    "benefitTwo": 'Adds size and shape to calves',
    "benefitThree": 'Easier to overload on a Smith machine than with a barbell',
    "videoUrlName" :  'https://www.youtube.com/watch?v=Gti0nc0E2jI'
  },
];


class Exercises extends StatefulWidget {
  @override
  _ExercisesState createState() => _ExercisesState();
}

class _ExercisesState extends State<Exercises> {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: exercisesList.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, childAspectRatio: 4),
        itemBuilder: (BuildContext context, int index) {
          return OneExercise(
            title: exercisesList[index]['titleName'],
            description: exercisesList[index]['descriptionEx'],
            muscleTargeted: exercisesList[index]['MuscleName'],
            benefit1: exercisesList[index]['benefitOne'],
            benefit2: exercisesList[index]['benefitTwo'],
            benefit3: exercisesList[index]['benefitThree'],
            videoUrl: exercisesList[index]['videoUrlName'],
          );
        }
    );
  }
}


class OneExercise extends StatelessWidget {
  final title;
  final description;
  final muscleTargeted;
  final benefit1;
  final benefit2;
  final benefit3;
  final videoUrl;

  OneExercise({
    this.title,
    this.description,
    this.muscleTargeted,
    this.benefit1,
    this.benefit2,
    this.benefit3,
    this.videoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return new Card(
        child: Column(
          children: <Widget>[
            Expanded(
                child: SizedBox(
                    width: 360,
                    child: ListTile(
                      onTap: () => Navigator.push(
                          context,
                          new MaterialPageRoute(
                                    builder: (context) => ExerciseDetails(
                                      exerciseTitle: title,
                                      exerciseDescription: description,
                                      exerciseBenefit1: benefit1,
                                      exerciseBenefit2: benefit2,
                                      exerciseBenefit3: benefit3,
                                      exerciseVideoUrl: videoUrl,
                                    )
                          )
                      ),
                      contentPadding: EdgeInsets.only(top: 10, bottom: 10),
                      title: Text('$title', style: TextStyle(fontSize: 15, color: Colors.blueGrey)),
                      subtitle: Text('$description', style: TextStyle(color: Colors.black),maxLines: 2, ),
                      leading: Icon(Icons.fitness_center, color: Colors.black),
                      trailing: Icon(Icons.arrow_forward, color: Colors.black),
                    )
                )
            )
          ],
        )
    );
  }
}