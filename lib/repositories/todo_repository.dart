import 'dart:convert';

import 'package:lista/models/todo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TodoRepository {

  TodoRepository() {
    SharedPreferences.getInstance().then((value) => sharedPreferences = value);
  }

  late SharedPreferences sharedPreferences;

  Future<List<Todo>> getTodoList() async {
    sharedPreferences = await SharedPreferences.getInstance();
    final String jsonString = sharedPreferences.getString('todoList') ?? '[]';
    final List jsonDecoded = json.decode(jsonString) as List;
    return jsonDecoded.map((e) => Todo.fromJson(e)).toList();
  }

  void saveTodoList(List<Todo> todos) {
    final jsonString = json.encode(todos);
    print(jsonString);
    sharedPreferences.setString('todoList', jsonString);

    final jsonsalvo = sharedPreferences.get('todoList');
    print(jsonsalvo);

  }

}