import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // 참고: Key는 보통 위젯을 식별하기 위해 사용되며, 다음과 같이 키를 넣어줄 수 있다.
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Placeholder() 도 Plceholder Widget이다.
    // 간단한 위젯으로 개발 시 단순히 위젯 위치를 알기 위해 사용한다.
    return const Placeholder();
  }
}
