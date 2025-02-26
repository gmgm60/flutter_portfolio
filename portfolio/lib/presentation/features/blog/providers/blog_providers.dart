import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/blog/blog_repository_impl.dart';
import 'package:portfolio/domain/blog/blog_repository.dart';
import 'package:portfolio/domain/blog/models/blog_post.dart';

final blogRepositoryProvider = Provider<BlogRepository>((ref) {
  return BlogRepositoryImpl();
});

final blogPostsProvider = FutureProvider<List<BlogPost>>((ref) async {
  final repository = ref.watch(blogRepositoryProvider);
  return repository.getBlogPosts();
});