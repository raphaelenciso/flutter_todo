import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List todoList = [];

  //reference our box
  final _myBox = Hive.box(('myBox'));

  //run this method if this is the 1st time opening this app
  void createInitialData() {
    todoList = [
      ['This is an todo app', false],
      ['Check the box to mark as complete', false],
      ['Slide to left to delete', false]
    ];
  }

//load the data from database
  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", todoList);
  }
}
