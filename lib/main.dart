import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  /// StatefulWidget : 상태가 있는 위젯, 무언가 그리기 위해 위젯을 만들어야 한다.
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomnePageState();
}

class _MyHomnePageState extends State<MyHomePage> {
  /// Scaffold() : 앱을 만드는 뼈대가 되는 기본 위젯
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar() 속성을 이용해 화면 상단에 Bar를 생성한다.
      appBar: AppBar(
        /// Text() 위젯을 사용해 글씨를 나타낸다.
        title: Text('홈'),
      ),

      /// Center() 속성을 이용해 0을 중앙에 나타낸다.
      body: Center(
        child: Text(
          '0',

          /// TextStyle() 속성으로 폰트 색상과 크기를 설정한다.
          style: TextStyle(
            color: Colors.red,
            fontSize: 70,
          ),
        ),
      ),
    );
  }
}
