import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Home Page'),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.account_circle),
                title: Text('$index'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {},
              );
            },
          ),
        ),
      ),
    );
  }
}
