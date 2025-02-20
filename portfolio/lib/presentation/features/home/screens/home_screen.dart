import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/presentation/common/widgets/app_bar.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const PortfolioAppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isDesktop = constraints.maxWidth > 900;
          final isTablet = constraints.maxWidth > 600 && constraints.maxWidth <= 900;

          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(isDesktop ? 48.0 : 24.0),
              child: Center(
                child: Container(
                  constraints: BoxConstraints(maxWidth: isDesktop ? 1200 : double.infinity),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (isDesktop) const SizedBox(height: 48),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: isDesktop ? 2 : 1,
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
                                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                                    fontSize: isDesktop ? 48 : (isTablet ? 36 : 32),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  'Full Stack Developer & UI/UX Designer',
                                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontSize: isDesktop ? 24 : 20,
                                  ),
                                ),
                                const SizedBox(height: 32),
                                Text(
                                  'I create beautiful and functional applications with Flutter and modern web technologies. '
                                  'With a passion for clean code and user-centric design, I help businesses bring their ideas to life.',
                                  style: TextStyle(fontSize: isDesktop ? 18 : 16, height: 1.6),
                                ),
                              ],
                            ),
                          ),
                          if (isDesktop || isTablet) ...[                            
                            const SizedBox(width: 48),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(24),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.surfaceVariant,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Quick Links',
                                      style: Theme.of(context).textTheme.titleLarge,
                                    ),
                                    const SizedBox(height: 16),
                                    _QuickLinkButton(
                                      icon: Icons.work,
                                      label: 'View Projects',
                                      onTap: () => context.go('/projects'),
                                    ),
                                    const SizedBox(height: 8),
                                    _QuickLinkButton(
                                      icon: Icons.article,
                                      label: 'Read Blog',
                                      onTap: () => context.go('/blog'),
                                    ),
                                    const SizedBox(height: 8),
                                    _QuickLinkButton(
                                      icon: Icons.contact_mail,
                                      label: 'Contact Me',
                                      onTap: () => context.go('/contact'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                      if (!isDesktop && !isTablet) ...[                        
                        const SizedBox(height: 32),
                        _QuickLinkButton(
                          icon: Icons.work,
                          label: 'View Projects',
                          onTap: () => context.go('/projects'),
                        ),
                        const SizedBox(height: 8),
                        _QuickLinkButton(
                          icon: Icons.article,
                          label: 'Read Blog',
                          onTap: () => context.go('/blog'),
                        ),
                        const SizedBox(height: 8),
                        _QuickLinkButton(
                          icon: Icons.contact_mail,
                          label: 'Contact Me',
                          onTap: () => context.go('/contact'),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _QuickLinkButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _QuickLinkButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onTap,
      icon: Icon(icon),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 48),
      ),
    );
  }
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
