import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio/domain/entities/project.dart';

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

extension ProjectEntityMapper on ProjectEntity {
  Project toModel() {
    return Project(
      id: id,
      title: title,
      description: description,
      imageUrl: imageUrl ?? '',
      technologies: technologies,
      githubUrl: githubUrl ?? '',
      liveUrl: projectUrl,
      createdAt: createdAt,
    );
  }

  static ProjectEntity fromModel(Project model) {
    return ProjectEntity(
      id: model.id,
      title: model.title,
      description: model.description,
      technologies: model.technologies,
      createdAt: model.createdAt,
      imageUrl: model.imageUrl,
      projectUrl: model.liveUrl,
      githubUrl: model.githubUrl,
      featured: false,
    );
  }
}
