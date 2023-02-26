import 'package:flutter/foundation.dart';
import 'package:todo/model/Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> lists = [
    // Task(name: "Provider"),
    // Task(name: "Bloc"),
    // Task(name: "SOLID"),
    // Task(name: "Clean arch"),
  ];

  int get taskCount {
    return lists.length;
  }

  void addTask(String newTask) {
    final task = Task(name: newTask);
    lists.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    lists.remove(task);
    notifyListeners();
  }
}
