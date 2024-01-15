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
          child: SizedBox(
            width: 400,
            height: 400,
            child: Card(
              elevation: 50,
              margin: EdgeInsets.all(5),
              shadowColor: Colors.blue,
              color: Colors.amber,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.deepPurpleAccent,
                ),
              ),
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.brown,
                  radius: 50,
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(fontSize: 80),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
