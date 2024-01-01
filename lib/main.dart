import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('1'),
              ),
              title: const Text('Item1'),
              subtitle: const Text('Item description'),
              trailing: IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('2'),
              ),
              title: const Text('Item2'),
              subtitle: const Text('Item description'),
              trailing: IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('3'),
              ),
              title: const Text('Item3'),
              subtitle: const Text('Item description'),
              trailing: IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('4'),
              ),
              title: const Text('Item4'),
              subtitle: const Text('Item description'),
              trailing: IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('5'),
              ),
              title: const Text('Item5'),
              subtitle: const Text('Item description'),
              trailing: IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('6'),
              ),
              title: const Text('Item6'),
              subtitle: const Text('Item description'),
              trailing: IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
