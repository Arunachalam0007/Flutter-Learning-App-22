import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_app/models/task.dart';

class TaskData extends ChangeNotifier {
   final List<Task> _listOfTasks = [
    Task(taskName: 'Wake Up at 6.30 AM'),
    Task(taskName: 'Go to the GYM', isChecked: true),
    Task(taskName: 'Fresh up and Ready to the Standup')
  ];

  UnmodifiableListView<Task> get listOfTasks {
    return UnmodifiableListView(_listOfTasks);
  }

  int get taskCount => _listOfTasks.length;

  void addTasks (String newTaskTitle){
    final task = Task(taskName: newTaskTitle);
    _listOfTasks.add(task);
    notifyListeners(); // Listeren Immediatly
  }

  void updateTaskCheckedValue (int index, bool newIsChecked) {
    _listOfTasks[index].isChecked = newIsChecked;
    notifyListeners(); // Listeren Immediatly
  }

  void removeTask(int index){
    final taskToRemove = _listOfTasks[index];
    _listOfTasks.remove(taskToRemove);
    notifyListeners(); // Listeren Immediatly
  }

}