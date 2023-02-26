import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked;
  String? name;
  final Function? checkBoxCallback;
  VoidCallback? onLongPressCallback;
  int? isEmpty;

  TaskTile(
      {this.name,
      this.isChecked = false,
      this.checkBoxCallback,
      this.isEmpty,
      this.onLongPressCallback});

  @override
  Widget build(BuildContext context) {
    return isEmpty == 0
        ? Center(
            child: Text(
            "All done for the day",
            style: TextStyle(color: Colors.red),
          ))
        : ListTile(
            onLongPress: onLongPressCallback,
            title: Text(
              name.toString(),
              style: TextStyle(
                  decoration: isChecked ? TextDecoration.lineThrough : null),
            ),
            trailing: Checkbox(
              value: isChecked,
              onChanged: (value) {
                checkBoxCallback!(value);
              },
            ),
          );
  }
}
