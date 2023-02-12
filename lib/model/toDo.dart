class ToDo{
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
   required this.id,
   required this.todoText,
   this.isDone=false,
   });

  static List<ToDo> todoList() {
    return[
      ToDo(id: '01', todoText:'Can add your task here',isDone: false),

    ];
  }

  ToDo.fromMap(Map map):
    this.id=map['id'],
    this.todoText=map['todoText'],
    this.isDone=map['isDone'];

  Map toMap(){
    return{
      'id':this.id,
      'todoText':this.todoText,
      'isDone':this.isDone,
    };
  }
}