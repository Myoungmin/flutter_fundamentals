import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<DynamicWidget> listDynamic = [];

  addDynamic() {
    if (listDynamic.length >= 5) return;
    listDynamic.add(DynamicWidget());
    setState(() {});
  }

  submitData() {
    for (var element in listDynamic) {
      print(element.controller.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dynamic App'),
        ),
        body: Container(
          child: Column(
            children: [
              Flexible(
                child: ListView.builder(
                  itemCount: listDynamic.length,
                  itemBuilder: (context, index) => listDynamic[index],
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: submitData,
                  child: const Text('Submit Data'),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: addDynamic,
          child: const Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}

class DynamicWidget extends StatelessWidget {
  DynamicWidget({super.key});

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(hintText: 'Enter Data'),
      ),
    );
  }
}
