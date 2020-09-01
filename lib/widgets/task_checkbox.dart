import 'package:flutter/material.dart';

class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckBoxState;

  TaskCheckBox({this.checkboxState, this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckBoxState,
    );
  }
}

