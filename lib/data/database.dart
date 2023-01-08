import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

//  reference our box
  final _myBox = Hive.box('mybox');

// run this method  if this is the list time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Complete The Project", false],
      ["Check Flutter Internships", false],
    ];
  }

// load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

//update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
