import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          physics: const BouncingScrollPhysics(), // iOS 스타일 스크롤
          //physics: const ClampingScrollPhysics(), // Android 스타일 스크롤
          itemCount: 20,
          itemBuilder: (context, position) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text(position.toString()),
              ),
              title: Text('Item $position'),
              subtitle: Text('Item$position description'),
            );
          },
        ),
      ),
    );
  }
}
