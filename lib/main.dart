import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

// ObjectKey에서 활용할 클래스 정의
class Identity {
  String name = '';
  Identity(this.name);
}

class _MyAppState extends State<MyApp> {
  List<Widget> tileList = [
    // ValueKey 적용
    MyStatefulWidget(Colors.brown, key: const ValueKey('Myoungmin')),
    // ObjectKey 적용
    MyStatefulWidget(Colors.green, key: ObjectKey(Identity('Myoungmin'))),
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
