//TASK MODEL

class Task {
  final String name;
  bool isDone;
  Task({required this.name , this.isDone =false});
// TO CHANGE CHECKBOX STATE WHILE PRESSED
  void doneChange(){
    isDone = !isDone;
  }
}