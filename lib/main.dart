import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    try {
      if (Platform.isIOS || Platform.isMacOS) {
        return const CupertinoApp(
          title: 'My App',
          home: MyHomePage(),
        );
      } else {
        return const MaterialApp(
          title: 'My App',
          home: MyHomePage(),
        );
      }
    } catch (e) {
      return const MaterialApp(
        title: 'My App',
        home: MyHomePage(),
      );
    }
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    try {
      if (Platform.isIOS || Platform.isMacOS) {
        return const CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text('My Home Page'),
          ),
          child: Center(
            child: Text('Welcome to my app!'),
          ),
        );
      } else {
        return Scaffold(
          appBar: AppBar(
            title: const Text('My Home Page'),
          ),
          body: const Center(
            child: Text('Welcome to my app!'),
          ),
        );
      }
    } catch (e) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('My Home Page'),
        ),
        body: const Center(
          child: Text('Welcome to my app!'),
        ),
      );
    }
  }
}
