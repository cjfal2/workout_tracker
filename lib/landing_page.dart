import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    void printFunc() {
      print(1);
    }

    return Scaffold(
      backgroundColor: Colors.amber[200],
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/runner.png"),
              opacity: 0.2,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "러닝앱",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontFamily:
                            "NanumBrushScript"), // 테마 쓸 때 커스텀 폰트 패밀리 적용법
                    // style: TextStyle(fontSize: 32, fontFamily: "NanumBrushScript"),
                  ),
                  Column(
                    children: [
                      Text(
                        "환영합니다",
                        style: TextStyle(fontSize: 32),
                      ),
                      ElevatedButton(
                        onPressed: printFunc,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green),
                        child: Text(
                          "시작하기",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
