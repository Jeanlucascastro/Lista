import 'package:flutter/material.dart';


class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'E-mail',
              hintText: 'exemplo@gmail.corm',
              border: OutlineInputBorder(),
              prefixText: 'R\$ ',
              suffixText: 'cm',
              labelStyle: TextStyle(
                fontSize: 20,
                color: Colors.green
              )
            ),
            obscureText: false,
            keyboardType: TextInputType.datetime,
            style: TextStyle(
              fontSize: 20,
              color: Colors.green
            ),
          ),
        ),
      )
    );
  }
}