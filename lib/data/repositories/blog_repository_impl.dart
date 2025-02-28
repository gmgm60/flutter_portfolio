import 'package:dartz/dartz.dart';
// Note: You need to add dartz: ^0.10.1 to your pubspec.yaml dependencies
import 'package:portfolio/core/error/app_error.dart';
import 'package:portfolio/data/datasources/firebase_blog_datasource.dart';
import 'package:portfolio/domain/entities/blog_entity.dart';
import 'package:portfolio/domain/repositories/blog_repository.dart';

/// Implementation of BlogRepository using FirebaseBlogDataSource
class BlogRepositoryImpl implements BlogRepository {
  final FirebaseBlogDataSource _dataSource;

  BlogRepositoryImpl(this._dataSource);

  @override
  Future<Either<AppError, List<BlogPostEntity>>> getAllPosts() async {
    try {
      final posts = await _dataSource.getAllPosts();
      return Right(posts);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to fetch blog posts',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, BlogPostEntity>> getPostById(String id) async {
    try {
      final post = await _dataSource.getPostById(id);
      return Right(post);
    } catch (e, stackTrace) {
      return Left(AppError.notFound(
        message: 'Blog post not found',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, BlogPostEntity>> createPost(BlogPostEntity post) async {
    try {
      final createdPost = await _dataSource.createPost(post);
      return Right(createdPost);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to create blog post',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, BlogPostEntity>> updatePost(BlogPostEntity post) async {
    try {
      final updatedPost = await _dataSource.updatePost(post);
      return Right(updatedPost);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to update blog post',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, void>> deletePost(String id) async {
    try {
      await _dataSource.deletePost(id);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to delete blog post',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, List<BlogCategoryEntity>>> getAllCategories() async {
    try {
      final categories = await _dataSource.getAllCategories();
      return Right(categories);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to fetch blog categories',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, List<BlogPostEntity>>> getPostsByCategory(String categoryId) async {
    try {
      final posts = await _dataSource.getPostsByCategory(categoryId);
      return Right(posts);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to fetch posts by category',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, List<BlogPostEntity>>> getPostsByTag(String tag) async {
    try {
      final posts = await _dataSource.getPostsByTag(tag);
      return Right(posts);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to fetch posts by tag',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, List<BlogPostEntity>>> searchPosts(String query) async {
    try {
      final posts = await _dataSource.searchPosts(query);
      return Right(posts);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to search posts',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }
}