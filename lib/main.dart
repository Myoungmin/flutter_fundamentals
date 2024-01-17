import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Gesture Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gesture Demo"),
      ),
      body: GestureDetector(
        onTap: () {
          print('Screen tapped');
        },
        child: Container(
          color: Colors.white,
          child: const Center(
            child: Text(
              'Tap anywhere on the screen',
              style: TextStyle(fontSize: 60),
            ),
          ),
        ),
      ),
    );
  }
}
