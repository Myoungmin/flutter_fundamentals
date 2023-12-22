import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ko Myoungmin'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.comment),
              tooltip: 'Comment Icon',
              splashColor: Colors.red,
              alignment: Alignment.topLeft,
              highlightColor: Colors.brown,
              hoverColor: Colors.amber,
            ),
            const IconButton(
              // onPressed에 null을 할당하면 해당 위젯은 사용자의 입력을 받지 않으며, 일반적으로 시각적으로도 비활성화된 상태로 표시
              onPressed: null,
              icon: Icon(Icons.place),
              tooltip: 'Comment Icon',
              disabledColor: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
