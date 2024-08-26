import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode, // 릴리즈 모드가 아닐 때만 활성화
        builder: (context) => MyApp(), // 앱을 감싸줍니다.
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // useInheritedMediaQuery: true, // MediaQuery를 상속받아 사용
      locale: DevicePreview.locale(context), // Locale 설정
      builder: DevicePreview.appBuilder, // 앱 빌더 설정
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            children: [
              Flexible(
                flex: 10,
                child: Container(
                  color: Color.fromRGBO(255, 136, 136, 1),
                  child: Text(
                    "러닝앱",
                    style: TextStyle(fontSize: 32),
                  ),
                ),
              ),
              Expanded(
                flex: 100,
                child: Image.asset("assets/runner.png"),
              ),
              Flexible(
                flex: 10,
                child: Text(
                  "환영합니다",
                  style: TextStyle(fontSize: 32),
                ),
              ),
              Flexible(
                flex: 10,
                child: ElevatedButton(
                  onPressed: () => print("1"),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: Text(
                    "시작하기",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
