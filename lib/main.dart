import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'My App',
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        primaryColor: CupertinoColors.systemPurple,
        primaryContrastingColor: CupertinoColors.systemOrange,
        barBackgroundColor: CupertinoColors.systemGrey,
        scaffoldBackgroundColor: CupertinoColors.systemBackground,
        textTheme: CupertinoTextThemeData(
          primaryColor: CupertinoColors.white,
          actionTextStyle: TextStyle(color: CupertinoColors.activeBlue),
          textStyle: TextStyle(fontSize: 20),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('My Home Page'),
      ),
      child: ListView(
        children: [
          CupertinoButton(
            onPressed: () {},
            child: const Text('Click'),
          ),
          const Center(
              child: Text('Cupertino',
                  style: TextStyle(color: CupertinoColors.white))),
        ],
      ),
    );
  }
}
