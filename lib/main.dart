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
          title: const Text('SingleChildScrollView Widget Example'),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                height: 1000,
                child: const Center(
                  child: Text('Header'),
                ),
              ),
              Container(
                color: Colors.green,
                height: 1000,
                child: const Center(
                  child: Text('Footer'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
