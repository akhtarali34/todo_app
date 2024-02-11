import 'package:flutter/cupertino.dart';

class ToDo{
  String? id;
  String? todoText;
  bool? isDone;

  ToDo({
   required this.id,
    required this.todoText,
    this.isDone = false
  });

  static List<ToDo> todoList(){
    return [
      ToDo(id: "1", todoText: "Offering Fajar", isDone: true),
      ToDo(id: "2", todoText: "Reciting Quran", isDone: true),
      ToDo(id: "3", todoText:"Doing Exercise" ),
      ToDo(id: "4", todoText:"Doing Exercise" ),
      ToDo(id: "5", todoText:"Doing Exercise" ),
      ToDo(id: "6", todoText:"Doing Exercise" ),

    ];
  }
}