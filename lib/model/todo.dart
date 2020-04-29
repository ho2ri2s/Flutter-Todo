class Todo {
  String id;
  String title;
  DateTime expire;

  Todo(this.title, this.expire);

  Todo.create() {
    title = "";
    expire = DateTime.now();
  }
}
