// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_label

import 'package:flutter/material.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/screens/add_task_screen.dart';
import 'package:todo_app/widgets/tasks_list.dart';
// import 'package:provider/provider.dart';
import 'package:get/instance_manager.dart';
import 'package:todo_app/controllers/taskController.dart';


class TasksScreen extends StatelessWidget {
  final contrroller = Get.put<TaskController>(TaskController());

  @override

  Widget build(BuildContext context) {
    return Scaffold(
//ADD TASKS btn
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
// Show pop up window to add tasks 
          onPressed: (){

            showModalBottomSheet(
            isScrollControlled: true,
            context: context, 
            builder: (context)=>SingleChildScrollView(
              child: Container(
                padding:EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom) ,
                
// TO PRINT THE NEW TASK ON THE LIST PAGE
                child: AddTaskScreen((newTaskTitle) {
                
                  // setState(() {
                  // tasks.add(Task(name: newTaskTitle));
// TO CLOSE THE ADD TASK WINDOW AUTOMATICALLY IN(SetState())
                  // Navigator.pop(context);
                  // });

                }),)
                ),
            );
          },
          backgroundColor: Color.fromARGB(207, 59, 27, 2),
          child: Icon(Icons.add, color:Color.fromARGB(255, 251, 230, 238) ,),

        ),
        backgroundColor: Color.fromARGB(255, 251, 230, 238),
        body:Container(
          padding: const EdgeInsets.only(top: 60 ,
          left: 20 ,
          right:20 ,
          bottom: 80),
// MAIN Column
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.playlist_add_check ,size: 40, color: Color.fromARGB(207, 59, 27, 2),),
                  SizedBox(width: 20),
                  Text('ToDO List',style: TextStyle(
                    color: Color.fromARGB(207, 64, 54, 46),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,

                  ),
                  ),
                ],
              ),
// TASKS NUMBER
             Text(
              '${contrroller.tasks.length} Tasks'
              , style: TextStyle(color:Color.fromARGB(207, 59, 27, 2),
             fontSize: 18,
              ),) ,
// GAB btw TEXT & THE CONTAINER 
            SizedBox(height:20 ,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                   color: Color.fromARGB(140, 141, 129, 129),
                   borderRadius: BorderRadius.all(Radius.circular(20),
                   
                   ),
                ),
// LIST POINTS
                child: TasksList(),
              ),
            )
            ],
          ),
        ) ,
    );
  }
}

