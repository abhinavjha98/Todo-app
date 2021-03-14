import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todey_app/models/task_data.dart';
import 'package:todey_app/widgets/task_title.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskdata.tasks[index];
            return TaskTitle(
              tasktitle: task.name,
              isChecked: task.isDone,
              checkBoxCallBack: (checkBoxState) {
                taskdata.updateTask(task);
              },
              longPressCallBack: () {
                taskdata.deleteTask(task);
              },
            );
          },
          itemCount: taskdata.intTaskCount,
        );
      },
    );
  }
}
