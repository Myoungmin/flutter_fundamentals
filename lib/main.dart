import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class DataModel with ChangeNotifier {
  int _data = 0;
  int get data => _data;

  void increment() {
    _data++;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataModel(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Provider Test'),
          ),
          body: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MyWidget1(),
              MyWidget2(),
              MyWidget3(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyWidget1 extends StatelessWidget {
  const MyWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    final dataModel = Provider.of<DataModel>(context);

    print('MyWidget1');
    return Center(
      child: Column(
        children: <Widget>[
          Text('MyWidget1: ${dataModel.data}'),
          ElevatedButton(
            onPressed: () {
              dataModel.increment();
            },
            child: const Text('Increment'),
          ),
        ],
      ),
    );
  }
}

class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    //final data = Provider.of<int>(context);
    return const Center(
      child: Text('MyWidget2 : I do not consume the model.'),
    );
  }
}

class MyWidget3 extends StatelessWidget {
  const MyWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    final dataModel = Provider.of<DataModel>(context);

    print('MyWidget3');
    return Center(
      child: Column(
        children: <Widget>[
          Text('MyWidget3: ${dataModel.data}'),
          ElevatedButton(
            onPressed: () {
              dataModel.increment();
            },
            child: const Text('Increment'),
          )
        ],
      ),
    );
  }
}
