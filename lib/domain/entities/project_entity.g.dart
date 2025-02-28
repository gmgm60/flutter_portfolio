// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectEntityImpl _$$ProjectEntityImplFromJson(Map<String, dynamic> json) =>
    _$ProjectEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      technologies: (json['technologies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: _timestampToDateTime(json['createdAt']),
      imageUrl: json['imageUrl'] as String?,
      projectUrl: json['projectUrl'] as String?,
      githubUrl: json['githubUrl'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      featured: json['featured'] as bool?,
    );

Map<String, dynamic> _$$ProjectEntityImplToJson(_$ProjectEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'technologies': instance.technologies,
      'createdAt': instance.createdAt.toIso8601String(),
      'imageUrl': instance.imageUrl,
      'projectUrl': instance.projectUrl,
      'githubUrl': instance.githubUrl,
      'categories': instance.categories,
      'featured': instance.featured,
    };
