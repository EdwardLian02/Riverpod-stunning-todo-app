// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Todo _$TodoFromJson(Map<String, dynamic> json) => _Todo(
      id: json['id'] as String? ?? "",
      title: json['title'] as String? ?? "",
      description: json['description'] as String? ?? "",
      category: json['category'] as String? ?? "",
      time: DateTime.parse(json['time'] as String),
      priority: $enumDecodeNullable(_$PriorityEnumMap, json['priority']) ??
          Priority.medium,
      isCompleted: json['isCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$TodoToJson(_Todo instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'time': instance.time.toIso8601String(),
      'priority': _$PriorityEnumMap[instance.priority]!,
      'isCompleted': instance.isCompleted,
    };

const _$PriorityEnumMap = {
  Priority.high: 'high',
  Priority.medium: 'medium',
  Priority.low: 'low',
};
