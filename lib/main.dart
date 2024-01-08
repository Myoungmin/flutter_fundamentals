import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final PageController _controller = PageController(
    initialPage: 1,
    viewportFraction: 0.7,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PageView Example'),
        ),
        body: PageView(
          controller: _controller,
          children: [
            Container(margin: const EdgeInsets.all(10), color: Colors.red),
            Container(margin: const EdgeInsets.all(10), color: Colors.blue),
            Container(margin: const EdgeInsets.all(10), color: Colors.green),
          ],
        ),
      ),
    );
  }
}
