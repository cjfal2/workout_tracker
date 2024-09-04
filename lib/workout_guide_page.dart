import "package:flutter/material.dart";
import 'package:audioplayers/audioplayers.dart';

class WorkoutGuidePage extends StatefulWidget {
  WorkoutGuidePage({super.key});

  @override
  State<WorkoutGuidePage> createState() => _WorkoutGuidePageState();
}

class _WorkoutGuidePageState extends State<WorkoutGuidePage> {
  final player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    // 최초 화면 생성시에만 적용
    // 이 위치에 리스너를 넣으면 최초 1번만 적용되기 때문에 리소스를 별로 안잡아먹음
    player.onPlayerComplete.listen((event) {
      setState(() {});
    });
  }

  IconButton getIconButton() {
    // 이 위치에 리스너를 넣으면 오디오 재생되는 동안 계속 호출됨, 리소스 큼
    if (player.state == PlayerState.playing) {
      return IconButton(
        onPressed: () async {
          await player.stop();
          print("스쾃 멈춤");
          setState(() {});
        },
        icon: Icon(Icons.stop_circle_rounded),
        iconSize: Theme.of(context).textTheme.displayLarge?.fontSize,
        color: Colors.red,
      );
    } else {
      return IconButton(
        onPressed: () async {
          await player.play(AssetSource('squat.mp3'));
          print("스쾃");
          setState(() {});
        },
        icon: Icon(Icons.play_circle_fill_outlined),
        iconSize: Theme.of(context).textTheme.displayLarge?.fontSize,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WorkoutGuide"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "스쿼트",
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.displaySmall?.fontSize),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_left_outlined),
                  iconSize: Theme.of(context).textTheme.displayLarge?.fontSize,
                ),
              ),
              Expanded(flex: 3, child: Image.asset('assets/squat.jpeg')),
              Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_right_outlined),
                  iconSize: Theme.of(context).textTheme.displayLarge?.fontSize,
                ),
              ),
            ],
          ),
          Text("30분",
              style: TextStyle(
                  fontSize:
                      Theme.of(context).textTheme.displayMedium?.fontSize)),
          Padding(
            padding: const EdgeInsets.all(10),
            child: getIconButton(),
          )
        ],
      ),
    );
  }
}
