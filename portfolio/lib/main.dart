import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:portfolio/core/firebase/firebase_service.dart';
import 'package:portfolio/presentation/features/about/screens/about_screen.dart';
import 'package:portfolio/presentation/features/admin/screens/admin_dashboard_screen.dart';
import 'package:portfolio/presentation/features/admin/screens/admin_login_screen.dart';
import 'package:portfolio/presentation/features/blog/screens/blog_screen.dart';
import 'package:portfolio/presentation/features/contact/screens/contact_screen.dart';
import 'package:portfolio/presentation/features/home/screens/home_screen.dart';
import 'package:portfolio/presentation/features/projects/screens/projects_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
  await FirebaseService().init();
  runApp(const ProviderScope(child: MyApp()));
}

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/projects',
      builder: (context, state) => const ProjectsScreen(),
    ),
    GoRoute(
      path: '/blog',
      builder: (context, state) => const BlogScreen(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => const AboutScreen(),
    ),
    GoRoute(
      path: '/contact',
      builder: (context, state) => const ContactScreen(),
    ),
    GoRoute(
      path: '/admin',
      builder: (context, state) => const AdminLoginScreen(),
    ),
    GoRoute(
      path: '/admin/dashboard',
      builder: (context, state) => const AdminDashboardScreen(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routerConfig: _router,
      builder: (context, child) {
        return Scaffold(
          body: child,
          floatingActionButton: kDebugMode
              ? FloatingActionButton(
                  onPressed: () => _router.go('/admin'),
                  child: const Icon(Icons.admin_panel_settings),
                )
              : null,
        );
      },
    );
  }
}
