import 'package:flutter/material.dart';


class TodoListPage extends StatelessWidget {
  TodoListPage({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: emailController,
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
                onChanged: onChanged,
                onSubmitted: onSubmitted,
              ),
              ElevatedButton(onPressed: login, child: Text('entrar'))
            ],
          ),
        ),
      )
    );
  }

  void login() {
    String text = emailController.text;
    print(text);
    emailController.clear();
    emailController.text = 'entrar';
    print(text);
  }

  void onChanged(String text) {
  // print(text);
  }

  void onSubmitted(String text) {
    print(text);
  }
}