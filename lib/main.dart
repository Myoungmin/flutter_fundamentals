import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // TextEditingController로 TextField의 controller에 넣을 객체를 선언
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  labelStyle: TextStyle(
                    color: Colors.amber,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.brown,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(width: 1, color: Colors.red),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 5,
                      color: Colors.blue,
                    ),
                  ),
                  icon: Icon(Icons.settings),
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.star),
                ),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.search,
                obscureText: true,
                controller: _emailController,
              ),
              ElevatedButton(
                onPressed: () {
                  print(_emailController.text);
                },
                child: const Text('Click'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
