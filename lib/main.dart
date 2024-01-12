import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabBar Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Example'),
          bottom: TabBar(
            controller: _tabController,
            tabs: const <Widget>[
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.star), text: 'Favorites'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const <Widget>[
            Center(child: Text('Home')),
            Center(child: Text('Favorites')),
            Center(child: Text('Settings')),
          ],
        ),
      ),
    );
  }
}
