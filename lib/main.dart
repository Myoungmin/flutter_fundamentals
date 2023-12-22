import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          textDirection: TextDirection.ltr,
          children: [
            Container(
              child: const Icon(
                textDirection: TextDirection.ltr,
                Icons.home,
                color: Colors.red,
                size: 60.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
