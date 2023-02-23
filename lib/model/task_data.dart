import 'package:flutter/foundation.dart';
import 'package:todo/model/Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> lists = [
    Task(name: "Provider"),
    Task(name: "Bloc"),
    Task(name: "SOLID"),
    Task(name: "Clean arch"),
  ];

  int get taskCount {
    return lists.length;
  }
}