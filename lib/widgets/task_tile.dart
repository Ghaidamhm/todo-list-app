// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';






class TaskTile extends StatelessWidget {
 
 
  final bool isChecked ;
  final String taskTitle;
  final void Function(bool?) CheckboxChange;
    final void Function() ListTileDelete;


  // THE CONSTRUCTOR(parent)
  TaskTile({
    required this.isChecked , 
    required this.taskTitle ,
    required this.CheckboxChange,
    required this.ListTileDelete,
    });

  @override
  Widget build(BuildContext context) {
    return ListTile(
// TO ADD NEW TASK
      title: Text( taskTitle,
      style: TextStyle(decoration:isChecked ? TextDecoration.lineThrough : null, color: Color.fromARGB(207, 64, 54, 46), ),
      ),

      trailing: Checkbox(
      activeColor: Color.fromARGB(207, 64, 54, 46),
      value: isChecked,
//To check BOX status
      onChanged: CheckboxChange,

      // onChanged:CheckboxChange ,
    ),
    onLongPress:ListTileDelete ,
    );
  }
}


