class TodoList {
  String name;
  bool isDone;

  TodoList({this.name, this.isDone});

  void toggleDone(){
    isDone = !isDone;
  }
}