import 'package:portfolio/domain/blog/blog_repository.dart';
import 'package:portfolio/domain/blog/models/blog_post.dart';

class BlogRepositoryImpl implements BlogRepository {
  @override
  Future<List<BlogPost>> getBlogPosts() async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));
    
    return [
      BlogPost(
        title: 'Getting Started with Flutter',
        excerpt: 'Learn how to build beautiful cross-platform applications with Flutter. This comprehensive guide will walk you through the basics and best practices.',
        date: DateTime(2024, 2, 15),
        imageUrl: 'https://picsum.photos/seed/5/800/400',
      ),
      BlogPost(
        title: 'State Management with Riverpod',
        excerpt: 'Discover the power of Riverpod for state management in Flutter applications. Learn about providers, consumers, and advanced patterns.',
        date: DateTime(2024, 2, 10),
        imageUrl: 'https://picsum.photos/seed/6/800/400',
      ),
      BlogPost(
        title: 'Firebase Integration Guide',
        excerpt: 'Step-by-step tutorial on integrating Firebase services into your Flutter application. Covers authentication, Firestore, and cloud storage.',
        date: DateTime(2024, 2, 5),
        imageUrl: 'https://picsum.photos/seed/7/800/400',
      ),
    ];
  }
}