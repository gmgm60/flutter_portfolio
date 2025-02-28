import 'package:dartz/dartz.dart';
import 'package:portfolio/core/error/app_error.dart';
import 'package:portfolio/domain/entities/blog_entity.dart';

/// Repository interface for blog-related operations
abstract class BlogRepository {
  /// Get all blog posts
  Future<Either<AppError, List<BlogPostEntity>>> getAllPosts();

  /// Get a single blog post by ID
  Future<Either<AppError, BlogPostEntity>> getPostById(String id);

  /// Create a new blog post
  Future<Either<AppError, BlogPostEntity>> createPost(BlogPostEntity post);

  /// Update an existing blog post
  Future<Either<AppError, BlogPostEntity>> updatePost(BlogPostEntity post);

  /// Delete a blog post
  Future<Either<AppError, void>> deletePost(String id);

  /// Get all blog categories
  Future<Either<AppError, List<BlogCategoryEntity>>> getAllCategories();

  /// Get posts by category
  Future<Either<AppError, List<BlogPostEntity>>> getPostsByCategory(String categoryId);

  /// Get posts by tag
  Future<Either<AppError, List<BlogPostEntity>>> getPostsByTag(String tag);

  /// Search posts by query
  Future<Either<AppError, List<BlogPostEntity>>> searchPosts(String query);
}