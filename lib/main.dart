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
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Colors.red,
                  width: 2,
                ),
              ),
              child: Image.network(
                'https://avatars.githubusercontent.com/u/59222053?v=4',
                width: 200,
                height: 300,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Colors.red,
                  width: 2,
                ),
              ),
              child: Image.network(
                'https://avatars.githubusercontent.com/u/59222053?v=4',
                width: 200,
                height: 300,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Colors.red,
                  width: 2,
                ),
              ),
              child: Image.network(
                'https://avatars.githubusercontent.com/u/59222053?v=4',
                width: 200,
                height: 300,
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Colors.red,
                  width: 2,
                ),
              ),
              child: Image.network(
                'https://avatars.githubusercontent.com/u/59222053?v=4',
                width: 200,
                height: 300,
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Colors.red,
                  width: 2,
                ),
              ),
              child: Image.network(
                'https://avatars.githubusercontent.com/u/59222053?v=4',
                width: 200,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Colors.red,
                  width: 2,
                ),
              ),
              child: Image.network(
                'https://avatars.githubusercontent.com/u/59222053?v=4',
                width: 200,
                height: 300,
                fit: BoxFit.none,
              ),
            ),
          ],
        )
      ],
    );
  }
}
