import 'package:flutter/material.dart';
import 'package:todoey_app/widgets/tasks_list.dart';
class TaskTile extends StatefulWidget {
  const TaskTile({Key? key}) : super(key: key);

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Sample Title',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(checkboxState: isChecked,toggleCheckboxState: (bool? checkBoxVal){
        setState(() {
          isChecked = checkBoxVal ?? isChecked;
        });
      }),
    );
  }
}

class TaskCheckBox extends StatelessWidget {

  final bool checkboxState;
  final  Function(bool?) toggleCheckboxState;
  TaskCheckBox({required this.checkboxState, required this.toggleCheckboxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}
