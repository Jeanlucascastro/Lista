import 'package:flutter/material.dart';


class TodoListItem extends StatelessWidget {
  const TodoListItem({super.key, required this.title});

  final String title;

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
          Text('07/01/2023', style: TextStyle(
            fontSize: 12
          ),),
          Text(title, style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,

          ),)
        ],
      ),
    );
  }
}
