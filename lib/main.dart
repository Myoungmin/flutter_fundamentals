import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    print('initState called');
  }

  @override
  Widget build(BuildContext context) {
    print('build called');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Button tapped $_counter time${_counter == 1 ? '' : 's'}.'),
              ElevatedButton(
                child: const Text('Tap me'),
                onPressed: () {
                  setState(() {
                    _counter++;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
