import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SizedBox.expand(
            child: Card(
              color: Colors.amber,
              child: Text(
                'Myoungmin',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
