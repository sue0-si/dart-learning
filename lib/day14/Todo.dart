class Todo {
  num userId;
  num id;
  String title;
  bool completed;

  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'completed': completed,
    };
  }

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      userId: json['userId'] as num,
      id: json['id'] as num,
      title: json['title'] as String,
      completed: json['completed'] as bool,
    );
  }
}