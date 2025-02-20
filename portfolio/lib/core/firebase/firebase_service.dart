import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio/firebase_options.dart';

/// Service class to handle Firebase initialization and provide access to Firebase services
@singleton
class FirebaseService {
  late final FirebaseAuth _auth;
  late final FirebaseFirestore _firestore;
  late final FirebaseStorage _storage;
  late final FirebaseAnalytics _analytics;

  /// Initialize Firebase with the default options
  Future<void> init() async {
    try {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      _auth = FirebaseAuth.instance;
      _firestore = FirebaseFirestore.instance;
      _storage = FirebaseStorage.instance;
      _analytics = FirebaseAnalytics.instance;

      // Configure Firebase services
      await _configureFirestore();
      await _configureAnalytics();
    } catch (e) {
      print('Failed to initialize Firebase: $e');
      rethrow;
    }
  }

  /// Configure Firestore settings
  Future<void> _configureFirestore() async {
    try {
      _firestore.settings = const Settings(
        persistenceEnabled: true,
        cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED,
      );
    } catch (e) {
      print('Failed to configure Firestore: $e');
      rethrow;
    }
  }

  /// Configure Analytics settings
  Future<void> _configureAnalytics() async {
    try {
      await _analytics.setAnalyticsCollectionEnabled(true);
    } catch (e) {
      print('Failed to configure Analytics: $e');
      rethrow;
    }
  }

  // Getters for Firebase instances
  FirebaseAuth get auth => _auth;
  FirebaseFirestore get firestore => _firestore;
  FirebaseStorage get storage => _storage;
  FirebaseAnalytics get analytics => _analytics;
}