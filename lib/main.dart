// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:todo_app/models/task_data.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';
  import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {



// await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
// );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     bool debugShowCheckedModeBanner = true;
    return ChangeNotifierProvider (
      create: (context) => TaskData() ,
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'NoticiaText'),
        home: TasksScreen(),
      
      ),
    );
  }
}