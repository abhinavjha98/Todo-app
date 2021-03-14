import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  final bool isChecked;
  final String tasktitle;
  final Function checkBoxCallBack;
  final Function longPressCallBack;

  TaskTitle({
    this.tasktitle,
    this.isChecked,
    this.checkBoxCallBack,
    this.longPressCallBack,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressCallBack,
        title: Text(
          tasktitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkBoxCallBack,
        ));
  }
}
