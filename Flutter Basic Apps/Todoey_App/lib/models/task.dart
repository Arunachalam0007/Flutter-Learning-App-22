class Task{
  final String taskName;
  bool isChecked;
  Task({ required this.taskName, this.isChecked = false});
  void toggleChecked(){
    isChecked = !isChecked;
  }
}