import 'package:flutter/material.dart';

@immutable
class NewPage extends StatelessWidget {
  final String message;
  const NewPage({required this.message, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}
