import 'package:flutter/material.dart';

import 'main.dart';

/// 1개의 화면을 실행하기 위해 코드 분리를 했다.
class MyHomePage extends StatefulWidget {
  /// StatefulWidget : 상태가 있는 위젯, 무언가 그리기 위해 위젯을 만들어야 한다.
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomnePageState();
}

class _MyHomnePageState extends State<MyHomePage> {
  /// 정수형 타입의 count 변수 0으로 초기화한다.
  int number = 10;
  String _text = '';
  final _textController = TextEditingController();

  /// _textController 사용하고 나서 꼭 dispose() 해야한다. 메모리 문제
  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  /// Scaffold() : 앱을 만드는 뼈대가 되는 기본 위젯
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar() 속성을 이용해 화면 상단에 Bar를 생성한다.
      appBar: AppBar(
        /// Text() 위젯을 사용해 글씨를 나타낸다.
        title: Text('카운터'),
      ),

      /// Center() 속성을 이용해 0을 중앙에 나타낸다.
      body: Center(
        /// 화면 스크롤
        child: SingleChildScrollView(
          /// 화면에 나타내고 싶은 텍스트를 나란히 위,아래로 보여준다.
          child: Column(
            /// 메인 방향 가운데 정렬, Column : 위 ~ 아래, Row: 왼쪽 ~ 오른쪽
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),

              /// SizedBox() : 위젯 간 공간을 만들고 싶을 때 사용한다. Container보다 성능이 좋다.
              SizedBox(height: 100),
              Container(height: 30),
              Text(
                '숫자',

                /// TextStyle() 속성으로 폰트 색상과 크기를 설정한다.
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
              Text(
                /// count 변수의 값을 글자 형태로 표시할 수 있다.
                '$number',

                /// TextStyle() 속성으로 폰트 색상과 크기를 설정한다.
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 70,
                ),
              ),

              /// 일반적인 버튼
              ElevatedButton(
                onPressed: () {
                  /// 버튼을 클릭하면 run 탭에 ElevatedButton 출력
                  print('ElevatedButton');
                },
                child: Text('ElevatedButton'),
              ),

              /// 글자로 된 버튼
              TextButton(
                onPressed: () {},
                child: Text('TextButton'),
              ),

              /// 외곽선이 있는 버튼
              OutlinedButton(
                onPressed: () {},
                child: Text('OutlinedButton'),
              ),

              /// 입력창
              Row(
                children: [
                  /// 균등하게 화면을 분배하거나 남은 공간을 다 사용한다.
                  Expanded(
                    flex: 3,
                    child: TextField(
                      /// _textController를 통해 입력값을 얻는다.
                      controller: _textController,

                      /// 입력창 모양 꾸미기
                      decoration: InputDecoration(
                        labelText: '글자',
                        border: OutlineInputBorder(),
                      ),

                      /// 입력창에서 글자를 입력할 때마다 text에 들어온다.
                      onChanged: (text) {
                        _text = text;
                      },
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        print(_textController.text);
                      },
                      child: Text('login'),
                    ),
                  ),
                ],
              ),

              /// 인터넷 상에 있는 사진을 가져온다.
              Container(
                color: Colors.red,

                /// Padding을 이용해 사면을 빨간선으로 감싼다.
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    'https://velog.velcdn.com/images/jintak0401/post/07c4b595-178e-4b51-ae7d-f545bc14cfdc/dart.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              /// assets 폴더에 있는 사진을 가져온다.
              Image.asset(
                'assets/dart.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),

      /// floatingActionButton은 보통 아이콘을 넣는다.
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            /// 화면 갱신, 상태 변화가 생겼을 때 바로 반영한다.
            setState(() {
              /// '+' 아이콘을 클릭하면, count 값이 1 증가한다.
              number++;
            });
          },

          /// '+' 아이콘을 넣는다.
          child: Icon(Icons.add)),
    );
  }
}
