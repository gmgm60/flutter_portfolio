import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/presentation/common/widgets/app_bar.dart';

class BlogScreen extends ConsumerWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const PortfolioAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Blog Posts',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 32),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _mockBlogPosts.length,
              itemBuilder: (context, index) {
                final post = _mockBlogPosts[index];
                return _BlogPostCard(
                  title: post.title,
                  excerpt: post.excerpt,
                  date: post.date,
                  imageUrl: post.imageUrl,
                  onTap: () {
                    // TODO: Navigate to blog post details
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _BlogPostCard extends StatelessWidget {
  final String title;
  final String excerpt;
  final DateTime date;
  final String imageUrl;
  final VoidCallback onTap;

  const _BlogPostCard({
    required this.title,
    required this.excerpt,
    required this.date,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 24),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    excerpt,
                    style: Theme.of(context).textTheme.bodyLarge,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '${date.day}/${date.month}/${date.year}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BlogPost {
  final String title;
  final String excerpt;
  final DateTime date;
  final String imageUrl;

  const BlogPost({
    required this.title,
    required this.excerpt,
    required this.date,
    required this.imageUrl,
  });
}

final List<BlogPost> _mockBlogPosts = [
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