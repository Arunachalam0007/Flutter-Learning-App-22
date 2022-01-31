import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';
import 'package:todoey_app/widgets/task_tile.dart';


class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Consumer<TaskData>(
      builder: (BuildContext context, taskdata, Widget? child) {
        return ListView.builder(
            itemCount: taskdata.taskCount,
            itemBuilder: (context, index) {
              return TaskTile(
                taskName: taskdata.listOfTasks[index].taskName,
                isChecked: taskdata.listOfTasks[index].isChecked,
                checkboxCallBack: (val) {
                 Provider.of<TaskData>(context, listen: false).updateTaskCheckedValue(index, val ?? false);
                },
                removeList: (){
                  Provider.of<TaskData>(context, listen: false).removeTask(index);
                },
              );
            });
      },
    );
  }
}
