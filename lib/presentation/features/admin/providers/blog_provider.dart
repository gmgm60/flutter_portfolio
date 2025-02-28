import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dartz/dartz.dart';
import 'package:portfolio/core/error/app_error.dart';
import 'package:portfolio/data/datasources/impl/firebase_blog_datasource_impl.dart';
import 'package:portfolio/domain/entities/blog_entity.dart';
import 'package:portfolio/domain/repositories/blog_repository.dart';
import 'package:portfolio/data/repositories/blog_repository_impl.dart';

final blogRepositoryProvider = Provider<BlogRepository>((ref) {
  final dataSource = FirebaseBlogDataSourceImpl();
  return BlogRepositoryImpl(dataSource);
});

final blogPostsProvider = AutoDisposeFutureProvider<Either<AppError, List<BlogPostEntity>>>((ref) {
  return ref.watch(blogControllerProvider).getAllPosts();
});

final blogControllerProvider = Provider((ref) {
  return BlogController(ref);
});

class BlogController {
  final Ref _ref;

  BlogController(this._ref);

  Future<Either<AppError, List<BlogPostEntity>>> getAllPosts() async {
    final repository = _ref.read(blogRepositoryProvider);
    return await repository.getAllPosts();
  }

  Future<Either<AppError, BlogPostEntity>> createPost(BlogPostEntity blogPost) async {
    final repository = _ref.read(blogRepositoryProvider);
    return await repository.createPost(blogPost);
  }

  Future<Either<AppError, BlogPostEntity>> updatePost(BlogPostEntity blogPost) async {
    final repository = _ref.read(blogRepositoryProvider);
    return await repository.updatePost(blogPost);
  }

  Future<Either<AppError, void>> deletePost(String id) async {
    final repository = _ref.read(blogRepositoryProvider);
    return await repository.deletePost(id);
  }

  Future<Either<AppError, List<BlogPostEntity>>> getPostsByCategory(String categoryId) async {
    final repository = _ref.read(blogRepositoryProvider);
    return await repository.getPostsByCategory(categoryId);
  }

  Future<Either<AppError, List<BlogPostEntity>>> getPostsByTag(String tag) async {
    final repository = _ref.read(blogRepositoryProvider);
    return await repository.getPostsByTag(tag);
  }

  Future<Either<AppError, List<BlogPostEntity>>> searchPosts(String query) async {
    final repository = _ref.read(blogRepositoryProvider);
    return await repository.searchPosts(query);
  }
}