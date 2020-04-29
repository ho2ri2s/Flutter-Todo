import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TodoEdit extends StatefulWidget {
  @override
  _TodoEditState createState() => _TodoEditState();
}

class _TodoEditState extends State<TodoEdit> {
  String _title;
  DateTime _expire;

  _titleChanged(String text) {
    setState(() {
      _title = text;
    });
  }

  _expireChanged(DateTime expire) {
    setState(() {
      _expire = expire;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo Edit"),
      ),
      body: Column(children: <Widget>[
        Flexible(
          child: Card(
            margin: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            color: Colors.cyan[100],
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Title",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Flexible(
                  child: TextField(
                    textAlign: TextAlign.center,
                    enabled: true,
                    maxLength: 15,
                    style: TextStyle(color: Colors.black),
                    maxLines: 1,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'タイトルを入力してください'),
                    onChanged: (text) => _titleChanged(text),
                  ),
                ),
                Text(
                  "期限",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () async {
                    final expire = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(DateTime.now().year),
                        lastDate: DateTime(DateTime.now().year + 1));
                    _expireChanged(expire);
                  },
                  child: Text(
                    _expire != null
                        ? "${_expire.toString()}"
                        : "タップで日付を選択してください",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 15,
                        color: _expire != null
                            ? Colors.black
                            : ThemeData.fallback().hintColor),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        FlatButton(
          child: Text(
            "作成",
            style: TextStyle(color: Colors.white),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.blue,
          onPressed: () => Navigator.pop(context),
        )
      ]),
    );
  }
}
