import 'package:flutter/material.dart';


class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Adicione uma tarefa'
                    ),
                  ),
                ),

                SizedBox(width: 8),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff00d7f3),
                    padding: EdgeInsets.all(16)
                  ),
                    child: Icon(
                      Icons.add,
                      size: 30,
                    ),
                )
              ],
            ),
            SizedBox(height: 16,),
            Row(
            children: [
              Expanded(
                  child: Text('Voce possui 0 tarefas')
              ),
              SizedBox(width: 8),
              ElevatedButton(onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff00d7f3),
                      padding: EdgeInsets.all(16)
                  ),
                  child: Text('Limpar tudo')
              )
            ],
            )
          ],
        ),
      ),
      ),
    );
  }
}