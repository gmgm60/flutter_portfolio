import 'package:portfolio/domain/entities/blog_entity.dart';

/// Interface for Firebase blog data source operations
abstract class FirebaseBlogDataSource {
  /// Get all blog posts from Firebase
  Future<List<BlogPostEntity>> getAllPosts();

  /// Get a single blog post by ID from Firebase
  Future<BlogPostEntity> getPostById(String id);

  /// Create a new blog post in Firebase
  Future<BlogPostEntity> createPost(BlogPostEntity post);

  /// Update an existing blog post in Firebase
  Future<BlogPostEntity> updatePost(BlogPostEntity post);

  /// Delete a blog post from Firebase
  Future<void> deletePost(String id);

  /// Get all blog categories from Firebase
  Future<List<BlogCategoryEntity>> getAllCategories();

  /// Get posts by category from Firebase
  Future<List<BlogPostEntity>> getPostsByCategory(String categoryId);

  /// Get posts by tag from Firebase
  Future<List<BlogPostEntity>> getPostsByTag(String tag);

  /// Search posts by query in Firebase
  Future<List<BlogPostEntity>> searchPosts(String query);
}