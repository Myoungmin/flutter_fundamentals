import 'package:flutter/material.dart';

void main() => runApp(const BottomSheetApp());

class BottomSheetApp extends StatelessWidget {
  const BottomSheetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text('Bottom Sheet Sample')),
      body: const BottomSheetExample(),
    ));
  }
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('ShowModalBottomSheet'),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  color: Colors.amber,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: const Icon(Icons.add),
                        title: const Text('추가'),
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.remove),
                        title: const Text('삭제'),
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  ),
                );
              });
        },
      ),
    );
  }
}
