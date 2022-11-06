// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_label, sort_child_properties_last, deprecated_member_use

// import 'dart:html';

import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:get/instance_manager.dart';
import 'package:todo_app/controllers/taskController.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  final contrroller = Get.put<TaskController>(TaskController());

  AddTaskScreen(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      color: Color.fromARGB(255, 237, 227, 231),
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(207, 64, 54, 46),
// backgroundColor:  Color.fromARGB(255, 251, 230, 238),
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
// ACCESS TO ADD A TASK          //listen:false ===> TO REBUILD THE LIST
              // Provider.of<TaskData>(context , listen: false).addTask(newTaskTitle!);
              // Navigator.pop(context);
              contrroller.addTask(newTaskTitle!);
            },
            child: Text('Add'),
            style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(207, 64, 54, 46),
              primary: Color.fromARGB(255, 237, 227, 231),
            ),
          ),
        ],
      ),
    );
  }
}
