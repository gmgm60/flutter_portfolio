// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SkillEntityImpl _$$SkillEntityImplFromJson(Map<String, dynamic> json) =>
    _$SkillEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      proficiency: (json['proficiency'] as num).toInt(),
      category: json['category'] as String,
      description: json['description'] as String?,
      iconUrl: json['iconUrl'] as String?,
      lastUsed: json['lastUsed'] == null
          ? null
          : DateTime.parse(json['lastUsed'] as String),
      projects: (json['projects'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$SkillEntityImplToJson(_$SkillEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'proficiency': instance.proficiency,
      'category': instance.category,
      'description': instance.description,
      'iconUrl': instance.iconUrl,
      'lastUsed': instance.lastUsed?.toIso8601String(),
      'projects': instance.projects,
      'metadata': instance.metadata,
    };

_$SkillCategoryEntityImpl _$$SkillCategoryEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SkillCategoryEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      iconUrl: json['iconUrl'] as String?,
      displayOrder: (json['displayOrder'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SkillCategoryEntityImplToJson(
        _$SkillCategoryEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'iconUrl': instance.iconUrl,
      'displayOrder': instance.displayOrder,
    };
