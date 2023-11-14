
import 'dart:convert';
import 'package:isar/isar.dart';
part 'task.g.dart';
@Collection()


class Task {
  final Id? id;
  final String task;
  final String description;
  final bool status;
  Task({
    this.id,
    required this.task,
    required this.description,
    required this.status,
  });

  

  Task copyWith({
    Id? id,
    String? task,
    String? description,
    bool? status,
  }) {
    return Task(
      id: id ?? this.id,
      task: task ?? this.task,
      description: description ?? this.description,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'task': task,
      'description': description,
      'status': status,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'] != null ? map['id'] as int : null,
      task: map['task'] as String,
      description: map['description'] as String,
      status: map['status'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Task.fromJson(String source) => Task.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Task(id: $id, task: $task, description: $description, status: $status)';
  }

  @override
  bool operator ==(covariant Task other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.task == task &&
      other.description == description &&
      other.status == status;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      task.hashCode ^
      description.hashCode ^
      status.hashCode;
  }
}
