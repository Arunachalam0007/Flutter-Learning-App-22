import 'package:flutter/material.dart';
import 'package:todoey_app/widgets/tasks_list.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool isChecked;
  final Function(bool?) checkboxCallBack;
  TaskTile({required this.taskName,required this.isChecked, required this.checkboxCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallBack,
      ),
    );
  }
}

