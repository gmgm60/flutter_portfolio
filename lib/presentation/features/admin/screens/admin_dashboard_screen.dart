import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
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
              context.go('/admin/login');
            },
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isDesktop = constraints.maxWidth > 900;
          final isTablet = constraints.maxWidth > 600 && constraints.maxWidth <= 900;

          if (isDesktop || isTablet) {
            return Row(
              children: [
                NavigationRail(
                  extended: isDesktop,
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: (index) {
                    setState(() => _selectedIndex = index);
                  },
                  //labelType: NavigationRailLabelType.all,
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
            );
          }

          return Column(
            children: [
              BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: (index) {
                  setState(() => _selectedIndex = index);
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.work),
                    label: 'Projects',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.article),
                    label: 'Blog',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.psychology),
                    label: 'Skills',
                  ),
                ],
              ),
              Expanded(child: _pages[_selectedIndex]),
            ],
          );
        },
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
                  showDialog(
                    context: context,
                    builder: (context) => _ProjectFormDialog(),
                  );
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

class _ProjectFormDialog extends ConsumerStatefulWidget {
  @override
  ConsumerState<_ProjectFormDialog> createState() => _ProjectFormDialogState();
}

class _ProjectFormDialogState extends ConsumerState<_ProjectFormDialog> {
  final _formKey = GlobalKey<FormState>();
  late String _title;
  late String _description;
  late String _imageUrl;
  late String _githubUrl;
  final List<String> _technologies = [];
  final _techController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final project = Project(
        id: '',
        title: _title,
        description: _description,
        imageUrl: _imageUrl,
        technologies: _technologies,
        githubUrl: _githubUrl,
        createdAt: DateTime.now(),
      );
      ref.read(projectControllerProvider).createProject(project);
      Navigator.of(context).pop();
    }
  }

  void _addTechnology() {
    final tech = _techController.text.trim();
    if (tech.isNotEmpty && !_technologies.contains(tech)) {
      setState(() {
        _technologies.add(tech);
        _techController.clear();
      });
    }
  }

  @override
  void dispose() {
    _techController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add New Project'),
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Title'),
                validator: (value) =>
                    value?.isEmpty ?? true ? 'Please enter a title' : null,
                onSaved: (value) => _title = value!,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Description'),
                maxLines: 3,
                validator: (value) =>
                    value?.isEmpty ?? true ? 'Please enter a description' : null,
                onSaved: (value) => _description = value!,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Image URL'),
                validator: (value) =>
                    value?.isEmpty ?? true ? 'Please enter an image URL' : null,
                onSaved: (value) => _imageUrl = value!,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'GitHub URL'),
                validator: (value) =>
                    value?.isEmpty ?? true ? 'Please enter a GitHub URL' : null,
                onSaved: (value) => _githubUrl = value!,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _techController,
                      decoration: const InputDecoration(
                        labelText: 'Technologies',
                        hintText: 'Add technologies used',
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: _addTechnology,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                children: _technologies
                    .map((tech) => Chip(
                          label: Text(tech),
                          onDeleted: () {
                            setState(() {
                              _technologies.remove(tech);
                            });
                          },
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _submitForm,
          child: const Text('Save'),
        ),
      ],
    );
  }
}