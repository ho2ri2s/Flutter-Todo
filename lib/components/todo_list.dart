import 'package:flutter/material.dart';
import 'package:fluttertodo/components/todo_edit.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TodoEdit()));
        },
        child: Container(
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
