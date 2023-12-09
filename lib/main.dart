import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // 참고: Key는 보통 위젯을 식별하기 위해 사용되며, 다음과 같이 키를 넣어줄 수 있다.
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.red,
          width: 50,
          height: 50,
          margin: const EdgeInsets.all(10),
        ),
        Container(
          color: Colors.blue,
          width: 50,
          height: 50,
          margin: const EdgeInsets.all(10),
        )
      ],
    );
  }
}
