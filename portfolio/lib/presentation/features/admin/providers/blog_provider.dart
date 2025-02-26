import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dartz/dartz.dart';
import 'package:portfolio/core/error/app_error.dart';
import 'package:portfolio/domain/blog/models/blog_post.dart';
import 'package:portfolio/presentation/features/blog/providers/blog_providers.dart';

final blogPostsProvider = AutoDisposeFutureProvider<Either<AppError, List<BlogPost>>>((ref) {
  return ref.watch(blogControllerProvider).getBlogPosts();
});

final blogControllerProvider = Provider((ref) {
  return BlogController(ref);
});

class BlogController {
  final Ref _ref;

  BlogController(this._ref);

  Future<Either<AppError, List<BlogPost>>> getBlogPosts() async {
    final repository = _ref.read(blogRepositoryProvider);
    return await repository.getBlogPosts();
  }

  Future<Either<AppError, Unit>> createBlogPost(BlogPost blogPost) async {
    final repository = _ref.read(blogRepositoryProvider);
    return await repository.createBlogPost(blogPost);
  }

  Future<Either<AppError, Unit>> updateBlogPost(BlogPost blogPost) async {
    final repository = _ref.read(blogRepositoryProvider);
    return await repository.updateBlogPost(blogPost);
  }

  Future<Either<AppError, Unit>> deleteBlogPost(String id) async {
    final repository = _ref.read(blogRepositoryProvider);
    return await repository.deleteBlogPost(id);
  }
}