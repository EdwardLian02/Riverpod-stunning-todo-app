enum Priority { high, medium, low }

class TodoModel {
  final String title;
  final String description;
  final String category;
  final Priority priority;
  final String time;
  bool isCompleted;

  TodoModel({
    required this.title,
    required this.description,
    required this.isCompleted,
    required this.category,
    required this.priority,
    required this.time,
  });
}
