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
        body: MultiProvider(
          providers: [
            FutureProvider(
              create: (context) =>
                  Future.delayed(const Duration(seconds: 5), () => 5),
              initialData: 1,
            ),
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
    final seconds = Provider.of<int>(context);

    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text('Seconds: $seconds'),
        ],
      ),
    );
  }
}
