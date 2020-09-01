import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_checkbox.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task.',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
        checkboxState: isChecked,
        toggleCheckBoxState: (newCheckBoxState) {
          setState(() {
            isChecked = newCheckBoxState;
          });
        },
      ),
    );
  }
}

