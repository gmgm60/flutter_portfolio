import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_entity.freezed.dart';
part 'blog_entity.g.dart';

/// Represents a blog post in the portfolio
@freezed
class BlogPostEntity with _$BlogPostEntity {
  const factory BlogPostEntity({
    required String id,
    required String title,
    required String content,
    required String author,
    required DateTime publishedAt,
    required List<String> tags,
    String? excerpt,
    String? featuredImageUrl,
    String? seoTitle,
    String? seoDescription,
    Map<String, dynamic>? metadata,
    int? readTimeMinutes,
    bool? published,
    List<String>? relatedPosts,
  }) = _BlogPostEntity;

  factory BlogPostEntity.fromJson(Map<String, dynamic> json) =>
      _$BlogPostEntityFromJson(json);
}

/// Represents a blog category
@freezed
class BlogCategoryEntity with _$BlogCategoryEntity {
  const factory BlogCategoryEntity({
    required String id,
    required String name,
    required String description,
    String? slug,
    int? displayOrder,
    String? parentCategoryId,
  }) = _BlogCategoryEntity;

  factory BlogCategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$BlogCategoryEntityFromJson(json);
}