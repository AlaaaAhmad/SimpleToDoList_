import 'task.dart';

class toDoList {
  List<task> tasks = [];
  List<int> ids = []; 

  void add(task t) {
    tasks.add(t);
  }

  void delete(task t) {
    tasks.remove(t);
  }

  void displayToDo() {
    for (int i = 0; i < tasks.length; i++) {
      print("Task id is: ${tasks[i].task_id}");
      print("Task name is:  ${tasks[i].task_name}");
      print("Task descriptioni is: ${tasks[i].task_description}");
      if (tasks[i].task_completed)
        print("Task is completed");
      else
        print("Task is not completed");
      print("--------------------------------------------------------");
    }
  }
}
