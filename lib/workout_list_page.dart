import 'package:flutter/material.dart';
import 'workout.dart';

List<Workout> workouts = [
  Workout(
    name: '스쿼트',
    minutes: 30,
    imageName: 'squat.jpeg',
    audioName: 'squat.mp3',
    kcal: 200,
  ),
  Workout(
    name: '사이드런지',
    minutes: 20,
    imageName: 'side_lunge.jpeg',
    audioName: 'side_lunge.mp3',
    kcal: 100,
  ),
  Workout(
    name: '푸쉬업',
    minutes: 15,
    imageName: 'pushup.jpeg',
    audioName: 'pushup.mp3',
    kcal: 100,
  ),
  Workout(
    name: '마운틴클림버',
    minutes: 15,
    imageName: 'mountain_climber.jpeg',
    audioName: 'mountain_climber.mp3',
    kcal: 50,
  ),
  Workout(
    name: '런지',
    minutes: 20,
    imageName: 'lunge.jpeg',
    audioName: 'lunge.mp3',
    kcal: 100,
  ),
  Workout(
    name: '덤벨컬',
    minutes: 40,
    imageName: 'dumbell_curl.jpeg',
    audioName: 'dumbell_curl.mp3',
    kcal: 200,
  ),
  Workout(
    name: '덩키킥',
    minutes: 30,
    imageName: 'donkey_kick.jpeg',
    audioName: 'donkey_kick.mp3',
    kcal: 50,
  ),
  Workout(
    name: '친업',
    minutes: 25,
    imageName: 'chinup.jpeg',
    audioName: 'chinup.mp3',
    kcal: 300,
  ),
  Workout(
    name: '벤치프레스',
    minutes: 10,
    imageName: 'benchpress.jpeg',
    audioName: 'benchpress.mp3',
    kcal: 250,
  ),
];

class WorkoutListPage extends StatefulWidget {
  WorkoutListPage({super.key});

  @override
  State<WorkoutListPage> createState() => _WorkoutListPageState();
}

class _WorkoutListPageState extends State<WorkoutListPage> {
  List<GestureDetector> getWorkdoutList(BuildContext context) {
    List<GestureDetector> workoutListRow = [];
    for (var i = 0; i < workouts.length; i++) {
      var workout = workouts[i];
      var name = workout.name;
      var image = workout.imageName;
      var minutes = workout.minutes;
      // for (var workout in workouts) {
      //   var name = workout.name;
      //   var image = workout.imageName;
      //   var minutes = workout.minutes;
      workoutListRow.add(GestureDetector(
        onTap: () {
          print(name);
        },
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('assets/$image')),
              ),
            ),
            Expanded(
              child: Text(
                "${i + 1}.$name",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Text(
                "$minutes 분",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            )
          ],
        ),
      ));
    }
    return workoutListRow;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WorkoutList"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: getWorkdoutList(context),
        ),
      ),
    );
  }
}
