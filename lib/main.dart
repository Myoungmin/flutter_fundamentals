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
          title: const Text('Align Widget Example'),
        ),
        body: Center(
          child: Container(
            color: Colors.blue,
            height: 200,
            width: 200,
            child: const Align(
              alignment: Alignment.bottomRight,
              child: Text('Myoungmin'),
            ),
          ),
        ),
      ),
    );
  }
}
