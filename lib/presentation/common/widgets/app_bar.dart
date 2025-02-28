import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class PortfolioAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const PortfolioAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      title: const Text('Portfolio'),
      actions: [
        IconButton(
          icon: const Icon(Icons.home),
          onPressed: () => context.go('/'),
        ),
        IconButton(
          icon: const Icon(Icons.person),
          onPressed: () => context.go('/about'),
        ),
        IconButton(
          icon: const Icon(Icons.work),
          onPressed: () => context.go('/projects'),
        ),
        IconButton(
          icon: const Icon(Icons.article),
          onPressed: () => context.go('/blog'),
        ),
        IconButton(
          icon: const Icon(Icons.contact_mail),
          onPressed: () => context.go('/contact'),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}