import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function(String?) onPressedCallBack;

  AddTaskScreen({required this.onPressedCallBack});
  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',textAlign: TextAlign.center, style: TextStyle(fontSize: 30,color: Colors.lightBlueAccent),),
            TextField(autofocus: true,textAlign: TextAlign.center,onChanged: (newVal){newTaskTitle = newVal;},),
            ElevatedButton(onPressed: (){
              onPressedCallBack(newTaskTitle);
            }, child: Text('Add'),)
          ],
        ),
      ),
    );
  }
}
