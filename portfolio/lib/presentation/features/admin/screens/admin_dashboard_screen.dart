import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/domain/entities/project.dart';
import 'package:portfolio/presentation/features/admin/providers/project_provider.dart';

class AdminDashboardScreen extends ConsumerStatefulWidget {
  const AdminDashboardScreen({super.key});

  @override
  ConsumerState<AdminDashboardScreen> createState() => _AdminDashboardScreenState();
}

class _AdminDashboardScreenState extends ConsumerState<AdminDashboardScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const _ProjectsManagement(),
    const _BlogManagement(),
    const _SkillsManagement(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // TODO: Implement logout
              Navigator.of(context).pushReplacementNamed('/admin/login');
            },
          ),
        ],
      ),
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (index) {
              setState(() => _selectedIndex = index);
            },
            labelType: NavigationRailLabelType.all,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.work),
                label: Text('Projects'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.article),
                label: Text('Blog'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.psychology),
                label: Text('Skills'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(child: _pages[_selectedIndex]),
        ],
      ),
    );
  }
}

class _ProjectsManagement extends ConsumerWidget {
  const _ProjectsManagement();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectsAsyncValue = ref.watch(projectsProvider);

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Projects',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // TODO: Show project form dialog
                  final project = Project(
                    id: '',
                    title: 'New Project',
                    description: 'Project description',
                    imageUrl: 'https://via.placeholder.com/300',
                    technologies: ['Flutter', 'Firebase'],
                    githubUrl: 'https://github.com',
                    createdAt: DateTime.now(),
                  );
                  ref.read(projectControllerProvider).createProject(project);
                },
                icon: const Icon(Icons.add),
                label: const Text('Add Project'),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Expanded(
            child: projectsAsyncValue.when(
              data: (data) {
                final projects = data.getOrElse(() {
                  return [];
                },);
                if (projects.isEmpty) {
                  return const Center(
                    child: Text('No projects added yet'),
                  );
                }
                return ListView.builder(
                  itemCount: projects.length,
                  itemBuilder: (context, index) {
                    final project = projects[index];
                    return Card(
                      margin: const EdgeInsets.only(bottom: 16),
                      child: ListTile(
                        title: Text(project.title),
                        subtitle: Text(project.description),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            ref.read(projectControllerProvider).deleteProject(project.id);
                          },
                        ),
                      ),
                    );
                  },
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
            ),
          ),
        ],
      ),
    );
  }
}

class _BlogManagement extends StatelessWidget {
  const _BlogManagement();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Blog Posts',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // TODO: Implement add blog post
                },
                icon: const Icon(Icons.add),
                label: const Text('Add Post'),
              ),
            ],
          ),
          const SizedBox(height: 24),
          // TODO: Implement blog posts list
          const Center(
            child: Text('No blog posts added yet'),
          ),
        ],
      ),
    );
  }
}

class _SkillsManagement extends StatelessWidget {
  const _SkillsManagement();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Skills',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // TODO: Implement add skill
                },
                icon: const Icon(Icons.add),
                label: const Text('Add Skill'),
              ),
            ],
          ),
          const SizedBox(height: 24),
          // TODO: Implement skills list
          const Center(
            child: Text('No skills added yet'),
          ),
        ],
      ),
    );
  }
}