import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:to_dolist/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'Wake up at 5am'),
    Task(name: 'Do meditaion'),
    Task(name: 'Read Book'),
    Task(name: 'DSA'),
    Task(name: 'Ml'),
    Task(name: 'web'),
    Task(name: 'Revision'),
    Task(name: 'Intership')
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateDone(Task task){
    task.toggleDone();
    notifyListeners();
  }
  
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}