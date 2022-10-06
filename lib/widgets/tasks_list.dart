// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';


class TasksList extends StatelessWidget {


 

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return  ListView.builder(
        itemCount:taskData.tasks.length ,
        itemBuilder: ((context, index) {
          return TaskTile(
           isChecked: taskData.tasks[index].isDone,
           taskTitle: taskData.tasks[index].name,
    // ADD NEW PROPERTY
            CheckboxChange:  (newValue){
                taskData.updateTask(taskData.tasks[index]);
        },
        ListTileDelete: (() {
          taskData.deleteTask(taskData.tasks[index]);
        }),
           
           );
          
        }),
      );
      },
      
    );

  }
}

