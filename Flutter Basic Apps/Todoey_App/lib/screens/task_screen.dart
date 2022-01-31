import 'package:flutter/material.dart';
import 'package:todoey_app/models/task.dart';
import 'package:todoey_app/widgets/task_tile.dart';
import 'package:todoey_app/widgets/tasks_list.dart';

import 'add_task_screen.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {

  List<Task> listOfTasks = [
    Task(taskName: 'Wake Up at 6.30 AM'),
    Task(taskName: 'Go to the GYM'),
    Task(taskName: 'Fresh up and Ready to the Standup', isChecked: true)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          onPressed: () {
            showModalBottomSheet(
              context: context,
              // isScrollControlled: true,
              builder: (context) => AddTaskScreen(onPressedCallBack: (newTaskName){
                setState(() {
                  listOfTasks.add(Task(taskName: newTaskName ?? 'demo'));
                });
                Navigator.pop(context);
              },),
            );
          },
          child: const Icon(Icons.add)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 35,
                  child: Icon(
                    Icons.list,
                    color: Colors.red,
                    size: 35,
                  ),
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${listOfTasks.length} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: TasksList(listOfTasks: listOfTasks,),
            ),
          ),
        ],
      ),
    );
  }
}

