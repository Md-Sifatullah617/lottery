import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lottery'),
        ),
        body: SafeArea(
          child: Center(
            child: Text(
              x.toString(),
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          x++;
          print(x.toString());
          print("I love you.");
        }),
      ),
    );
  }
}
