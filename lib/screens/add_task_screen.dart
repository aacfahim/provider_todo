import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/Task.dart';
import 'package:todo/model/task_data.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    String? newTask;
    return Container(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      color: Colors.transparent,
      child: Container(
          padding: EdgeInsets.all(30.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              )),
          child: Column(
            children: [
              Text(
                "Add Task",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                autofocus: true,
                onChanged: (value) {
                  newTask = value;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    fixedSize: Size(200, 50)),
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTask!);
                  Navigator.pop(context);
                  // print(Provider.of<TaskData>(context).lists.toList());
                },
                child: Text("ADD"),
              )
            ],
          )),
    );
  }
}
