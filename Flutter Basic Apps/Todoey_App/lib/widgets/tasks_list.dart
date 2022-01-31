import 'package:flutter/material.dart';
import 'package:todoey_app/models/task.dart';
import 'package:todoey_app/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  List<Task> listOfTasks = [];
  TasksList({required this.listOfTasks});
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.listOfTasks.length,
        itemBuilder: (context, index) {
          var currentTask = widget.listOfTasks[index];
          return TaskTile(
            taskName: currentTask.taskName,
            isChecked: currentTask.isChecked,
            checkboxCallBack: (val) {
              setState(() {
                currentTask.toggleChecked();
              });
            },
          );
        });
  }
}
