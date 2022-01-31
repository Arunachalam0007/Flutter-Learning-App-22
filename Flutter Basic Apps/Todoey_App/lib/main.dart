import 'package:flutter/material.dart';
import 'package:todoey_app/screens/task_screen.dart';

void main() {
  runApp( TodoeyApp());
}

class TodoeyApp extends StatelessWidget {
  const TodoeyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskScreen(),
    );
  }
}
