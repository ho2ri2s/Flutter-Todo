import 'package:flutter/material.dart';

class TodoEdit extends StatefulWidget {
  @override
  _TodoEditState createState() => _TodoEditState();
}

class _TodoEditState extends State<TodoEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo Edit"),
      ),
      body: _buildBody(),
    );
  }
}

_buildBody() => Column();
