import 'package:flutter/material.dart';
import 'package:lista/models/todo.dart';
import 'package:lista/widgets/todo_list_item.dart';

class TodoListPage extends StatefulWidget {
  TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  List<Todo> todos = [];

  final TextEditingController todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
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
                          Todo newTodo = Todo(
                            title: text,
                            dateTime: DateTime.now()
                          );
                          todos.add(newTodo);
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
              Flexible(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    for(Todo todo in todos)
                      TodoListItem(
                        todo: todo,
                      )
                  ],
                ),
              ),
              SizedBox(height: 16,),
              Row(
              children: [
                Expanded(
                    child: Text('Voce possui ${todos.length} tarefas')
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
      ),
    );
  }
}