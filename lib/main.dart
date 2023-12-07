import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // 참고: Key는 보통 위젯을 식별하기 위해 사용되며, 다음과 같이 키를 넣어줄 수 있다.
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        // Container의 color 선언과 decoration: BoxDecoration()을 둘다 적용하면, BoxDecoration() 안에서 color을 선안하라고 가이드한다.(에러 발생)
        color: Colors.blue,
        border: Border.all(
          color: Colors.amber,
          width: 5,
        ),
      ),
    );
  }
}