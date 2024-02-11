// import 'dart:js_interop_unsafe';

import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../models/todo.dart';
import '../widget/todo_items.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo;
  final onTodoChange;
  final onDeleteItem;
  const TodoItem({super.key, required this.todo, required this.onDeleteItem, required this.onTodoChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onTodoChange(todo);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ?? false ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdblue,
        ),
        title:  Text(
          todo.todoText! ,
          style: TextStyle(
              fontSize: 16,
              color: tdblack,
              decoration: todo.isDone ?? false ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              color: tdred, borderRadius: BorderRadius.circular(5)),
          child: IconButton(
            color: Colors.white,
            iconSize: 20,
            icon: Icon(Icons.delete),
            onPressed: () {
              onDeleteItem(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
