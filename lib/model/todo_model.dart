import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
abstract class Todo with _$Todo {
  const factory Todo({
    @Default("") String id,
    @Default("") String title,
    @Default("") String description,
    @Default("") String category,
    required DateTime time,
    @Default(Priority.medium) Priority priority,
    @Default(false) bool isCompleted,
  }) = _Todo;

  factory Todo.fromJson(Map<String, Object?> json) => _$TodoFromJson(json);

  factory Todo.create({
    required String title,
    String description = "",
    String category = "",
    DateTime? time,
    Priority? priority,
    bool isCompleted = false,
  }) {
    return Todo(
      id: const Uuid().v4(),
      title: title,
      description: description,
      category: category,
      time: DateTime.now(),
      priority: Priority.medium,
      isCompleted: isCompleted,
    );
  }
}

enum Priority { high, medium, low }

// class TodoModel {
//   final String title;
//   final String description;
//   final String category;
//   final Priority priority;
//   final String time;
//   bool isCompleted;

//   TodoModel({
//     required this.title,
//     required this.description,
//     required this.isCompleted,
//     required this.category,
//     required this.priority,
//     required this.time,
//   });
// }
