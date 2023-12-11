import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // 참고: Key는 보통 위젯을 식별하기 위해 사용되며, 다음과 같이 키를 넣어줄 수 있다.
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.ltr,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.blue,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.yellow,
              width: 50,
              height: 50,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              color: Colors.red,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.blue,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.yellow,
              width: 50,
              height: 50,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.blue,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.yellow,
              width: 50,
              height: 50,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.red,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.blue,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.yellow,
              width: 50,
              height: 50,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.red,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.blue,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.yellow,
              width: 50,
              height: 50,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.red,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.blue,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.yellow,
              width: 50,
              height: 50,
            ),
          ],
        ),
      ],
    );
  }
}
