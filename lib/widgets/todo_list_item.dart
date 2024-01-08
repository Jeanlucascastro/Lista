import 'package:flutter/material.dart';


class TodoListItem extends StatelessWidget {
  const TodoListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.grey[200],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('07/01/2023', style: TextStyle(
            fontSize: 12
          ),),
          Text('Tarefa', style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,

          ),)
        ],
      ),
    );
  }
}
