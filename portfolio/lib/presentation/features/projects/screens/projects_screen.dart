import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/presentation/common/widgets/app_bar.dart';

class ProjectsScreen extends ConsumerWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const PortfolioAppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isDesktop = constraints.maxWidth > 900;
          final isTablet = constraints.maxWidth > 600 && constraints.maxWidth <= 900;
          final crossAxisCount = isDesktop ? 3 : (isTablet ? 2 : 1);

          return SingleChildScrollView(
            padding: EdgeInsets.all(isDesktop ? 48.0 : 24.0),
            child: Center(
              child: Container(
                constraints: BoxConstraints(maxWidth: isDesktop ? 1200 : double.infinity),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Projects',
                      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontSize: isDesktop ? 48 : (isTablet ? 36 : 32),
                      ),
                    ),
                    const SizedBox(height: 32),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        crossAxisSpacing: 24,
                        mainAxisSpacing: 24,
                        childAspectRatio: isDesktop ? 1.5 : 1.2,
                      ),
                      itemCount: _mockProjects.length,
                      itemBuilder: (context, index) {
                        final project = _mockProjects[index];
                        return _ProjectCard(
                          title: project.title,
                          description: project.description,
                          imageUrl: project.imageUrl,
                          onTap: () {
                            // TODO: Navigate to project details
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final VoidCallback onTap;

  const _ProjectCard({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
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

class Project {
  final String title;
  final String description;
  final String imageUrl;

  const Project({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

final List<Project> _mockProjects = [
  Project(
    title: 'E-Commerce Platform',
    description: 'A full-featured e-commerce platform built with Flutter and Firebase.',
    imageUrl: 'https://picsum.photos/seed/1/800/600',
  ),
  Project(
    title: 'Social Media App',
    description: 'A modern social media application with real-time messaging.',
    imageUrl: 'https://picsum.photos/seed/2/800/600',
  ),
  Project(
    title: 'Task Management',
    description: 'A productivity app for managing tasks and projects.',
    imageUrl: 'https://picsum.photos/seed/3/800/600',
  ),
  Project(
    title: 'Weather App',
    description: 'A beautiful weather application with detailed forecasts.',
    imageUrl: 'https://picsum.photos/seed/4/800/600',
  ),
];