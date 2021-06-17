import 'package:flutter/material.dart';
import 'package:flutter_todo_app/bloc/todo_bloc.dart';
import 'package:provider/provider.dart';
import 'db/todo_database.dart';
import 'todo/todo_list_container.dart';

void main() async {
  await TodoDatabase.instance.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Todo List"),
        ),
        body: Provider<TodoBloc>.value(
          value: TodoBloc(),
          child: TodoListContainer(),
        ),
      ),
    );
  }
}
