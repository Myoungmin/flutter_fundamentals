import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Gesture Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _top = 0;
  String _dragStatus = 'Darg the text verticall';

  void _onVerticalDragStart(DragStartDetails details) {
    setState(() {
      _dragStatus = 'Vertical drag started';
      _top = details.globalPosition.dy;
    });
  }

  //details.delta.dy를 사용하여 드래그의 수직 이동 거리를 얻고, 이를 이용하여 위젯의 수직 위치(_top)를 업데이트
  void _onVerticalDragUpdate(DragUpdateDetails details) {
    setState(() {
      _top += details.delta.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onVerticalDragStart: _onVerticalDragStart,
        onVerticalDragUpdate: _onVerticalDragUpdate,
        child: Container(
          color: Colors.amber,
          child: Stack(
            children: [
              Positioned(
                top: _top,
                child: Text(_dragStatus),
              )
            ],
          ),
        ),
      ),
    );
  }
}
