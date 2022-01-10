import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            height: 100,
            width: 200,
            color: Colors.white,
            margin: EdgeInsets.only(left: 100, top: 100),
            child: Text('Sha Bussiness Card'),
            padding: EdgeInsets.all(30),
          ),
        ),
      ),
    );
  }
}
