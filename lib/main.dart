import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Button Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {
                  print('IconButton');
                },
              ),
              ElevatedButton(
                onPressed: () {
                  print('ElevatedButton');
                },
                child: const Text('Click me!'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('FloatingActionButton');
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
