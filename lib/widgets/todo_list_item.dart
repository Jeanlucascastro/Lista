import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lista/models/todo.dart';


class TodoListItem extends StatelessWidget {
  const TodoListItem({super.key, required this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.grey[200],
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(DateFormat('dd/MM/yyyy - HH:mm').format(todo.dateTime), style: TextStyle(
            fontSize: 12
          ),),
          Text(todo.title, style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,

          ),)
        ],
      ),
    );
  }
}
