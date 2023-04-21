import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');

  // if running the app first time ever
  void createInitialList() {
    toDoList = [
      ["Make tutorial", false, "13-4.23 6:32:45",],
      ["Do exercise", false, "13-4.23 6:32:45",],
    ];
  }

  // load Data
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
    // final list = _myBox.get("TODOLIST");
    // toDoList = list != null ? List.from(list) : [];
  }

  // update Database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }

}