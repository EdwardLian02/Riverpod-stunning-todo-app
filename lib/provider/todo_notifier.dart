import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_todo_app/model/todo_model.dart';
import 'dart:math';

class TodoNotifier extends Notifier<List<TodoModel>> {
  @override
  List<TodoModel> build() {
    return <TodoModel>[
      TodoModel(
        title: 'Morning Meditation',
        description: '15 minutes of mindfulness meditation',
        isCompleted: true,
        category: 'Health',
        priority: Priority.medium,
        time: '07:00 AM',
      ),
      TodoModel(
        title: 'Team Meeting',
        description: 'Weekly project sync with design team',
        isCompleted: false,
        category: 'Work',
        priority: Priority.high,
        time: '10:30 AM',
      ),
      TodoModel(
        title: 'Grocery Shopping',
        description: 'Buy fruits, vegetables, and milk',
        isCompleted: false,
        category: 'Personal',
        priority: Priority.low,
        time: '06:00 PM',
      ),
      TodoModel(
        title: 'Read Book',
        description: 'Atomic Habits - Chapter 5',
        isCompleted: false,
        category: 'Learning',
        priority: Priority.medium,
        time: '09:00 PM',
      ),
    ];
  }

  void addTodo(TodoModel todo) {
    state.add(todo);
  }

  void toggleTodo(int index) {
    state[index].isCompleted = !state[index].isCompleted;
  }

  void removeTodo(int index) {
    state.removeAt(index);
  }
}

final todoNotifierProvider =
    NotifierProvider<TodoNotifier, List<TodoModel>>(() {
  return TodoNotifier();
});

final completedCountProvider = Provider<int>((ref) {
  final todoList = ref.watch(todoNotifierProvider);
  return todoList.where((value) => value.isCompleted).length;
});
final completedRateProvider = Provider<double>((ref) {
  final todoList = ref.watch(todoNotifierProvider);
  final total = todoList.length;
  final finishCount = ref.watch(completedCountProvider);

  return total > 0 ? finishCount / total : 0;
});
