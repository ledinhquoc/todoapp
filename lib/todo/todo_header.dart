import 'package:flutter/material.dart';
import 'package:flutter_todo_app/bloc/todo_bloc.dart';
import 'package:flutter_todo_app/event/add_todo_event.dart';
import 'package:flutter_todo_app/event/delete_todo_event.dart';
import 'package:provider/provider.dart';

class TodoHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var txtTodoController = TextEditingController();
    var bloc = Provider.of<TodoBloc>(context);
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: txtTodoController,
            decoration: InputDecoration(
              labelText: 'Add todo',
              hintText: 'Add todo',
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        RaisedButton.icon(
          onPressed: () {
            bloc.event.add(AddTodoEvent(txtTodoController.text));
          },
          icon: Icon(Icons.add),
          label: Text('Add'),
        ),
      ],
    );
  }
}
