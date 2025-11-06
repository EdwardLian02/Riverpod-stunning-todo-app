import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_todo_app/model/todo_model.dart';

part 'todo_notifier.g.dart';

@riverpod
class TodoNotifier extends _$TodoNotifier {
  @override
  List<Todo> build() {
    return <Todo>[];
  }

  void addTodo(Todo todo) {
    state = [...state, todo];
  }

  void toggleTodo(String id) {
    state = state
        .map(
          (todo) => todo.id == id
              ? todo.copyWith(isCompleted: !todo.isCompleted)
              : todo,
        )
        .toList();
  }

  void removeTodo(String id) {
    state = state.where((todo) => todo.id != id).toList();
  }
}

final completedCountProvider = Provider<int>((ref) {
  final todoList = ref.watch(todoProvider);
  return todoList.where((value) => value.isCompleted).length;
});
final completedRateProvider = Provider<double>((ref) {
  final todoList = ref.watch(todoProvider);
  final total = todoList.length;
  final finishCount = ref.watch(completedCountProvider);

  return total > 0 ? finishCount / total : 0;
});
