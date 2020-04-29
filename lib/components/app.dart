import 'package:flutter/material.dart';
import 'package:fluttertodo/components/todo_list.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoList(),
    );
  }
}
