import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/presentation/common/widgets/app_bar.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const PortfolioAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Hero(
                tag: 'profile',
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Welcome to My Portfolio',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 16),
              Text(
                'Full Stack Developer & UI/UX Designer',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 32),
              const Text(
                'I create beautiful and functional applications with Flutter and modern web technologies. '
                'With a passion for clean code and user-centric design, I help businesses bring their ideas to life.',
                style: TextStyle(fontSize: 16, height: 1.6),
              ),
              const SizedBox(height: 48),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildFeatureCard(
                    context,
                    Icons.work,
                    'Projects',
                    'Explore my latest work and projects',
                    () => Navigator.pushNamed(context, '/projects'),
                  ),
                  _buildFeatureCard(
                    context,
                    Icons.article,
                    'Blog',
                    'Read my thoughts on technology and development',
                    () => Navigator.pushNamed(context, '/blog'),
                  ),
                  _buildFeatureCard(
                    context,
                    Icons.person,
                    'About Me',
                    'Learn more about my journey and skills',
                    () => Navigator.pushNamed(context, '/about'),
                  ),
                  _buildFeatureCard(
                    context,
                    Icons.contact_mail,
                    'Contact',
                    'Get in touch with me',
                    () => Navigator.pushNamed(context, '/contact'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureCard(
    BuildContext context,
    IconData icon,
    String title,
    String description,
    VoidCallback onTap,
  ) {
    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 280,
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, size: 32, color: Theme.of(context).primaryColor),
              const SizedBox(height: 16),
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}