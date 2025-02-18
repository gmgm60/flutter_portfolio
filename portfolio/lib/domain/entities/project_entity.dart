import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_entity.freezed.dart';
part 'project_entity.g.dart';

/// Represents a portfolio project
@freezed
class ProjectEntity with _$ProjectEntity {
  const factory ProjectEntity({
    required String id,
    required String title,
    required String description,
    required List<String> technologies,
    required DateTime createdAt,
    String? imageUrl,
    String? projectUrl,
    String? githubUrl,
    List<String>? categories,
    bool? featured,
  }) = _ProjectEntity;

  factory ProjectEntity.fromJson(Map<String, dynamic> json) =>
      _$ProjectEntityFromJson(json);
}