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
  /// Container() : 기본적으로 아무것도 없기때문에 검은색 화면을 출력한다.
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
