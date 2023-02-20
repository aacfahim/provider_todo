import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              TextField(),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    fixedSize: Size(200, 50)),
                onPressed: () {},
                child: Text("Add"),
              )
            ],
          )),
    );
  }
}