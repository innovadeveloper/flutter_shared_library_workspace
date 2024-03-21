import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_dto.freezed.dart';
part 'task_dto.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    String? id,
    String? name,
    String? avatar,
    String? createdAt,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
