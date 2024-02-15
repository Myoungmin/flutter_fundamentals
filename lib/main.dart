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

class SumCounter {
  int _total = 0;
  int get total => _total;
  SumCounter(PlusCounter plusCounter) {
    for (int i = 1; i <= plusCounter.count; i++) {
      _total += i;
    }
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
            ProxyProvider<PlusCounter, SumCounter>(
              update: (context, plusCounter, sumCounter) {
                return SumCounter(plusCounter);
              },
            )
          ],
          child: const MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final plus = Provider.of<PlusCounter>(context);
    final minus = Provider.of<SumCounter>(context);

    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text('Plus: ${plus.count}'),
          const SizedBox(height: 20),
          Text('Minus: ${minus.total}'),
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
            ],
          )
        ],
      ),
    );
  }
}
