import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/presentation/common/widgets/app_bar.dart';

class AboutScreen extends ConsumerWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const PortfolioAppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isDesktop = constraints.maxWidth > 900;
          final isTablet = constraints.maxWidth > 600 && constraints.maxWidth <= 900;

          return SingleChildScrollView(
            padding: EdgeInsets.all(isDesktop ? 48.0 : 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About Me',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 32),
                if (isDesktop)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: _buildMainContent(context),
                      ),
                      const SizedBox(width: 48),
                      Expanded(
                        child: _buildProfileCard(context),
                      ),
                    ],
                  )
                else
                  Column(
                    children: [
                      _buildProfileCard(context),
                      const SizedBox(height: 32),
                      _buildMainContent(context),
                    ],
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildMainContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'I am a passionate software developer with expertise in Flutter, Firebase, and modern web technologies. '
          'With years of experience in building cross-platform applications, I focus on creating elegant solutions that solve real-world problems.',
          style: TextStyle(fontSize: 16, height: 1.6),
        ),
        const SizedBox(height: 32),
        Text(
          'Skills',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: _skills.map((skill) => _SkillChip(skill)).toList(),
        ),
        const SizedBox(height: 32),
        Text(
          'Experience',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        ..._experiences.map((exp) => _ExperienceCard(experience: exp)),
      ],
    );
  }

  Widget _buildProfileCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'John Doe',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            const Text('Full Stack Developer'),
            const SizedBox(height: 16),
            const _ContactItem(
              icon: Icons.email,
              text: 'john@example.com',
            ),
            const _ContactItem(
              icon: Icons.location_on,
              text: 'San Francisco, CA',
            ),
            const _ContactItem(
              icon: Icons.link,
              text: 'github.com/johndoe',
            ),
          ],
        ),
      ),
    );
  }
}

class _SkillChip extends StatelessWidget {
  final String skill;

  const _SkillChip(this.skill);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(skill),
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      labelStyle: TextStyle(
        color: Theme.of(context).colorScheme.onPrimaryContainer,
      ),
    );
  }
}

class _ContactItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const _ContactItem({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 20),
          const SizedBox(width: 8),
          Text(text),
        ],
      ),
    );
  }
}

class Experience {
  final String company;
  final String position;
  final String period;
  final String description;

  const Experience({
    required this.company,
    required this.position,
    required this.period,
    required this.description,
  });
}

class _ExperienceCard extends StatelessWidget {
  final Experience experience;

  const _ExperienceCard({required this.experience});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              experience.company,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              experience.position,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 4),
            Text(
              experience.period,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 8),
            Text(experience.description),
          ],
        ),
      ),
    );
  }
}

final List<String> _skills = [
  'Flutter',
  'Dart',
  'Firebase',
  'React',
  'Node.js',
  'TypeScript',
  'UI/UX Design',
  'REST APIs',
  'GraphQL',
  'Git',
  'CI/CD',
  'Agile',
];

final List<Experience> _experiences = [
  Experience(
    company: 'Tech Solutions Inc.',
    position: 'Senior Flutter Developer',
    period: '2022 - Present',
    description: 'Leading the development of cross-platform mobile applications using Flutter and Firebase. Mentoring junior developers and implementing best practices.',
  ),
  Experience(
    company: 'Mobile Innovations Ltd.',
    position: 'Mobile Developer',
    period: '2020 - 2022',
    description: 'Developed and maintained multiple mobile applications using Flutter and native Android/iOS technologies. Collaborated with design and backend teams.',
  ),
  Experience(
    company: 'Startup Hub',
    position: 'Junior Developer',
    period: '2018 - 2020',
    description: 'Started career as a junior developer working on web and mobile applications. Gained experience in React, Node.js, and mobile development.',
  ),
];