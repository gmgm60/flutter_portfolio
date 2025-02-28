import 'package:freezed_annotation/freezed_annotation.dart';

part 'skill_entity.freezed.dart';
part 'skill_entity.g.dart';

/// Represents a skill in the portfolio
@freezed
class SkillEntity with _$SkillEntity {
  const factory SkillEntity({
    required String id,
    required String name,
    required int proficiency,
    required String category,
    String? description,
    String? iconUrl,
    DateTime? lastUsed,
    List<String>? projects,
    Map<String, dynamic>? metadata,
  }) = _SkillEntity;

  factory SkillEntity.fromJson(Map<String, dynamic> json) =>
      _$SkillEntityFromJson(json);
}

/// Represents a skill category
@freezed
class SkillCategoryEntity with _$SkillCategoryEntity {
  const factory SkillCategoryEntity({
    required String id,
    required String name,
    required String description,
    String? iconUrl,
    int? displayOrder,
  }) = _SkillCategoryEntity;

  factory SkillCategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$SkillCategoryEntityFromJson(json);
}