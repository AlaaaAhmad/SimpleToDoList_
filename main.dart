import 'task.dart';
import 'toDoList.dart';
import 'dart:io';

void main() {
  toDoList ToDo = toDoList();
  bool finished = false;
  while (!finished) {
    print("Choose the number of operaton You want to do:");
    print("1- Add an item to the list");
    print("2- Delete an item from the list");
    print("3- Edit an item in the list");
    print("4- Display the list items");
    print("5- Exit");

    String op = stdin.readLineSync().toString();
    switch (op) {
      case ("1"):
        {
          print(
              "Please, enter the task id, the task name, and the task description");
          print("Task id: ");
          String i = stdin.readLineSync().toString();
          int idNum = int.parse(i);
          bool found = false;
          for (int i = 0; i < ToDo.tasks.length; i++) {
            if (idNum == ToDo.tasks[i].task_id) found = true;
          }
          if (found) {
            print("The id is repeated");
            break;
          }
          print("Task Name: ");
          String taskName = stdin.readLineSync().toString();
          print("Task Description: ");
          String TaskDesc = stdin.readLineSync().toString();

          print("Is the task completed? (yes/no)");
          String c = stdin.readLineSync().toString();
          late bool isCompleted;
          if (c == "yes")
            isCompleted = true;
          else if (c == "no") isCompleted = false;
          task t = new task(idNum, taskName, TaskDesc, isCompleted);
          ToDo.add(t);
          print("Task is Added!");

          ToDo.displayToDo();
          break;
        }

      case ("2"):
        {
          print("Please, enter the id of the task you want to delete");
          String i = stdin.readLineSync().toString();
          int idNum = int.parse(i);
          for (int i = 0; i < ToDo.tasks.length; i++) {
            if (idNum == ToDo.tasks[i].task_id) {
              ToDo.delete(ToDo.tasks[i]);
              break;
            }
          }
          if (i == ToDo.tasks.length) {
            print("Task not found");
          } else {
            print("Task is deleted!");
            ToDo.displayToDo();
          }
          break;
        }

      case ("3"):
        {
          print("Please, enter the id of the task you want to edit");
          String i = stdin.readLineSync().toString();
          int idNum = int.parse(i);
          for (int i = 0; i < ToDo.tasks.length; i++) {
            if (idNum == ToDo.tasks[i].task_id) {
              print("Enter the new name");
              String Name = stdin.readLineSync().toString();
              ToDo.tasks[i].task_name = Name;
              print("Enter the new description");
              String Des = stdin.readLineSync().toString();
              ToDo.tasks[i].task_description = Des;
              print("Is it completed?");
              String com = stdin.readLineSync().toString();
              if (com == "yes")
                ToDo.tasks[i].task_completed = true;
              else
                ToDo.tasks[i].task_completed = false;
            }
          }
        }
      case ("4"):
        {
          ToDo.displayToDo();
          break;
        }
      case ("5"):
        {
          finished = true;
          break;
        }
    }
  }
}
