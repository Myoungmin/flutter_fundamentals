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
          title: const Text('TextStyle Property'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Ko Myoungmin',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.amber,
                fontSize: 30,
                fontStyle: FontStyle.italic,
                backgroundColor: Colors.blue,
                fontWeight: FontWeight.bold,
                letterSpacing: 5,
                wordSpacing: 20,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.wavy,
                decorationColor: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
