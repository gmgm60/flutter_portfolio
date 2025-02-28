import 'package:flutter/foundation.dart';

/// Application configuration class that holds environment-specific settings
class AppConfig {
  /// API endpoints and configuration values
  static const String apiBaseUrl = kDebugMode
      ? 'http://localhost:5001/portfolio-dev/us-central1/api'
      : 'https://api.portfolio.com';

  /// Firebase configuration
  static const String firebaseCollection = kDebugMode ? 'dev' : 'prod';

  /// Cache configuration
  static const Duration cacheDuration = Duration(hours: 24);

  /// Pagination configuration
  static const int defaultPageSize = 10;

  /// Asset paths
  static const String imagePath = 'assets/images';
  static const String iconPath = 'assets/icons';

  /// Feature flags
  static const bool enableAnalytics = !kDebugMode;
  static const bool enableCrashlytics = !kDebugMode;

  /// Timeouts
  static const Duration connectionTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);

  /// Social media links
  static const String githubUrl = 'https://github.com';
  static const String linkedinUrl = 'https://linkedin.com';
  static const String twitterUrl = 'https://twitter.com';

  /// Contact information
  static const String contactEmail = 'contact@portfolio.com';
  
  /// SEO configuration
  static const String siteTitle = 'Professional Portfolio';
  static const String siteDescription = 'A showcase of professional work and achievements';
  static const String siteKeywords = 'portfolio, professional, projects, skills';
}