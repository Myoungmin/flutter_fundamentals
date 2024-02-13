import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PlusCounter with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increase() {
    _count++;
    notifyListeners();
  }
}

class MinusCounter with ChangeNotifier {
  int _count = 100;
  int get count => _count;

  void decrease() {
    _count--;
    notifyListeners();
  }
}

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
          body: MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (context) => PlusCounter()),
              ChangeNotifierProvider(create: (context) => MinusCounter()),
            ],
            child: const MyWidget(),
          )),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final plus = Provider.of<PlusCounter>(context);
    final minus = Provider.of<MinusCounter>(context);

    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text('Plus: ${plus.count}'),
          const SizedBox(height: 20),
          Text('Minus: ${minus.count}'),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  plus.increase();
                },
                child: const Text('+'),
              ),
              ElevatedButton(
                onPressed: () {
                  minus.decrease();
                },
                child: const Text('-'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
