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
  bool _checkBoxValue = false;
  String _radioValue = 'Option 1';
  double _sliderValue = 50.0;
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Form Controls Example'),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Text(
                      '$_checkBoxValue $_radioValue $_sliderValue $_switchValue')),
              const SizedBox(
                height: 16.0,
              ),
              const Text('Checkbox: '),
              Checkbox(
                value: _checkBoxValue,
                onChanged: (value) {
                  setState(() {
                    // ! 없으면, A value of type 'bool?' can't be assigned to a variable of type 'bool'. 라는 에러메시지 표출
                    _checkBoxValue = value!;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              const Text('Radio Buttons: '),
              Row(
                children: [
                  Radio(
                    value: 'Option 1',
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        _radioValue = value.toString();
                      });
                    },
                  ),
                  const Text('Option 1'),
                  Radio(
                    value: 'Option 2',
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        _radioValue = value.toString();
                      });
                    },
                  ),
                  const Text('Option 2'),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Text('Slider: '),
              Slider(
                value: _sliderValue,
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
                min: 0,
                max: 100,
              ),
              const SizedBox(height: 16.0),
              const Text('Switch: '),
              Switch(
                value: _switchValue,
                onChanged: (value) {
                  setState(() {
                    _switchValue = value;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
