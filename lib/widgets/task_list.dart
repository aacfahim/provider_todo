import 'package:flutter/material.dart';
import 'package:todo/model/Task.dart';
import 'package:todo/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  TaskList({super.key, this.lists});

  final List<Task>? lists;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.lists!.length,
        itemBuilder: (context, index) {
          return TaskTile(
              name: widget.lists![index].name,
              isChecked: widget.lists![index].isDone,
              isEmpty: widget.lists!.length,
              checkBoxCallback: (checkBoxState) {
                setState(() {
                  widget.lists![index].toggleDone();
                });
              });
        });
  }
}
