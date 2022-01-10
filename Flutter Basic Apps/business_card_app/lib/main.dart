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
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Text('Container 1'),
                padding: EdgeInsets.all(30),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
                child: Text('Container 2'),
                padding: EdgeInsets.all(30),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: Text('Container 3'),
                padding: EdgeInsets.all(30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
