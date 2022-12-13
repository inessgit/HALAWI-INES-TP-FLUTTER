import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 120.0,
                height: double.infinity,
                color: Colors.grey,
              ),
              Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.redAccent,
                        height: 100.0,
                        width: 100.0,
                      ),
                      Container(
                        color: Colors.red,
                        height: 100.0,
                        width: 100.0,
                      ),
                    ]),
              ),
              Container(
                width: 120.0,
                height: double.infinity,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
