// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogPostEntityImpl _$$BlogPostEntityImplFromJson(Map<String, dynamic> json) =>
    _$BlogPostEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      author: json['author'] as String,
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      excerpt: json['excerpt'] as String?,
      featuredImageUrl: json['featuredImageUrl'] as String?,
      seoTitle: json['seoTitle'] as String?,
      seoDescription: json['seoDescription'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      readTimeMinutes: (json['readTimeMinutes'] as num?)?.toInt(),
      published: json['published'] as bool?,
      relatedPosts: (json['relatedPosts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$BlogPostEntityImplToJson(
        _$BlogPostEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'author': instance.author,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'tags': instance.tags,
      'excerpt': instance.excerpt,
      'featuredImageUrl': instance.featuredImageUrl,
      'seoTitle': instance.seoTitle,
      'seoDescription': instance.seoDescription,
      'metadata': instance.metadata,
      'readTimeMinutes': instance.readTimeMinutes,
      'published': instance.published,
      'relatedPosts': instance.relatedPosts,
    };

_$BlogCategoryEntityImpl _$$BlogCategoryEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BlogCategoryEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      slug: json['slug'] as String?,
      displayOrder: (json['displayOrder'] as num?)?.toInt(),
      parentCategoryId: json['parentCategoryId'] as String?,
    );

Map<String, dynamic> _$$BlogCategoryEntityImplToJson(
        _$BlogCategoryEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'slug': instance.slug,
      'displayOrder': instance.displayOrder,
      'parentCategoryId': instance.parentCategoryId,
    };
