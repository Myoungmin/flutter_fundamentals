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
          title: const Text('Text Property'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Container(
              width: 400,
              color: Colors.amber,
              child: const Text(
                'Welcome to Flutter My name is Ko Myoungmin',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 24),
                softWrap: false,
                overflow: TextOverflow.fade,
              ),
            ),
            Container(
              width: 400,
              color: Colors.red,
              child: const Text(
                'Welcome to Flutter My name is Ko Myoungmin',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 24),
                softWrap: false,
                overflow: TextOverflow.clip,
              ),
            ),
            Container(
              width: 400,
              color: Colors.green,
              child: const Text(
                'Welcome to Flutter My name is Ko Myoungmin',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 24),
                softWrap: false,
                overflow: TextOverflow.visible,
              ),
            ),
            Container(
              width: 400,
              color: Colors.brown,
              child: const Text(
                'Welcome to Flutter My name is Ko Myoungmin',
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 24),
                overflow: TextOverflow.visible,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
