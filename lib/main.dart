import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Provider Test'),
        ),
        body: Column(
          children: [
            const SizedBox(height: 10),
            Provider<int>.value(
              value: 5,
              // child 속성에 쓰인 위젯(MyWidget1)에서 Porvider 사용 가능
              child: const MyWidget1(),
            ),
            const SizedBox(height: 10),
            const MyWidget2(),
          ],
        ),
      ),
    );
  }
}

class MyWidget1 extends StatelessWidget {
  const MyWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    // Provider 값 가져오기
    final data = Provider.of<int>(context);
    return Column(
      children: [
        Text('MyWidget1: $data'),
        // 자식 위젯(MyWidget3)에서 Provider 사용 가능
        const MyWidget3(),
      ],
    );
  }
}

class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    //final data = Provider.of<int>(context);
    print('MyWidget2');
    return const Center(
      child: Text('MyWidget2'),
    );
  }
}

class MyWidget3 extends StatelessWidget {
  const MyWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    // Provider 값 가져오기
    final data = Provider.of<int>(context);
    print('MyWidget3');
    return Center(
      child: Text('MyWidget3: $data'),
    );
  }
}
