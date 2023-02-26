import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/Task.dart';
import 'package:todo/model/task_data.dart';
import 'package:todo/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, value, child) {
        return ListView.builder(
            itemCount: value.taskCount,
            itemBuilder: (
              context,
              index,
            ) {
              return TaskTile(
                name: value.lists[index].name,
                isChecked: value.lists[index].isDone,
                isEmpty: value.taskCount,
                checkBoxCallback: (checkBoxState) {
                  setState(() {
                    value.updateTask(value.lists[index]);
                  });
                },
                onLongPressCallback: () {
                  value.deleteTask(value.lists[index]);
                  setState(() {});
                },
              );
            });
      },
    );
  }
}
