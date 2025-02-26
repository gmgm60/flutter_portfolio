import 'package:portfolio/domain/blog/models/blog_post.dart';

abstract class BlogRepository {
  Future<List<BlogPost>> getBlogPosts();
}