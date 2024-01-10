import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AlertDialog Sample')),
        body: const Center(
          child: DialogExample(),
        ),
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext constext) => AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const Text('AlertDialog description'),

          // AlertDialog의 다양한 속성 추가
          backgroundColor: Colors.grey[100],
          elevation: 8.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          contentPadding: const EdgeInsets.all(12),
          actionsPadding: const EdgeInsets.all(12),
          titlePadding: const EdgeInsets.all(12),
          buttonPadding: const EdgeInsets.all(12),

          actions: <Widget>[
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK')),
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancel')),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}
