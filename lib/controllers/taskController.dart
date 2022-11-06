import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:todo_app/models/task.dart';

class TaskController extends GetxController{
 List<Task> tasks=[
    
    Task(name: 'Take Walk'),
    Task(name: 'Buy Car'),
    Task(name: 'Study Dart'),
    Task(name: "name"),

  ].obs;

      void addTask(String newTaskTitle){
      tasks.add(Task(name: newTaskTitle));
    }

    void updateTask(int index){
      tasks.elementAt(index).isDone =  !tasks.elementAt(index).isDone; 
      // print(task.name);
      //task.doneChange();
    }

    void deleteTask(Task task){
      tasks.remove(task);
    }
    
}