import 'package:flutter_todo_app/base/base_event.dart';
import 'package:flutter_todo_app/model/todo.dart';

class DeleteTodoEvent extends BaseEvent {
  Todo todo;

  DeleteTodoEvent(this.todo);
}