// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:todo_app/widgets/task_tile.dart';
//import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:get/instance_manager.dart';
import 'package:todo_app/controllers/taskController.dart';

class TasksList extends StatelessWidget {
  final contrroller = Get.put<TaskController>(TaskController());

  @override
  Widget build(BuildContext context) {
    return Obx(() =>(
      ListView.builder(
        itemCount: contrroller.tasks.length,
        itemBuilder: ((context, index) {
          return TaskTile(
              isChecked: contrroller.tasks[index].isDone,
              taskTitle: contrroller.tasks[index].name,
              // ADD NEW PROPERTY
              CheckboxChange: (newValue) {
                print(newValue);
                contrroller.updateTask(index);
              },
              ListTileDelete: (() {
                contrroller.deleteTask(contrroller.tasks[index]);
              }));
        }),
      )
    ));
  }
}