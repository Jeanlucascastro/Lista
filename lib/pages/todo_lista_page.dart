import 'package:flutter/material.dart';


class TodoListPage extends StatefulWidget {
  TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  List<String> todos = [];

  final TextEditingController todoController = TextEditingController();

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
                    controller: todoController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Adicione uma tarefa'
                    ),
                  ),
                ),

                SizedBox(width: 8),
                ElevatedButton(
                    onPressed: () {
                      String text = todoController.text;
                      setState(() {
                        todos.add(text);
                      });
                      todoController.clear();
                    },
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
            ListView(
              shrinkWrap: true,
              children: [
                for(String todo in todos)
                  ListTile(
                    title: Text(todo),
                    subtitle: Text('ola'),
                    leading: Icon(Icons.save, size: 30,),
                    onTap: () {
                      print('tarefa: $todo');
                    },
                  ),
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