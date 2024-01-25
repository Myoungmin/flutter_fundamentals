import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> tileList = [
    // 색상이 바뀌지 않음
    //MyStatefulWidget(Colors.brown),
    //MyStatefulWidget(Colors.green),

    // ValueKey로 설정
    //MyStatefulWidget(Colors.brown, key: const ValueKey('brownTile')),
    //MyStatefulWidget(Colors.green, key: const ValueKey('greenTile')),

    // UniqueKey() 활용
    MyStatefulWidget(Colors.brown, key: UniqueKey()),
    MyStatefulWidget(Colors.green, key: UniqueKey()),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Row(
              children: tileList,
            ),
            const SizedBox(
              height: 50.0,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  tileList.insert(1, tileList.removeAt(0));
                });
              },
              style:
                  ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
              child: const Text(
                "Click",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  Color color;

  MyStatefulWidget(this.color, {super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState(color);
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Color color;

  _MyStatefulWidgetState(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: color,
    );
  }
}
