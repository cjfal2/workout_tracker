import "package:flutter/material.dart";

class WorkoutGuidePage extends StatelessWidget {
  const WorkoutGuidePage({super.key});

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
              Expanded(flex: 3, child: Image.asset('assets/runner.png')),
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
          Text(
            "30분",
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.displayMedium?.fontSize),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.play_circle_fill_outlined),
              iconSize: Theme.of(context).textTheme.displayLarge?.fontSize,
            ),
          )
        ],
      ),
    );
  }
}
