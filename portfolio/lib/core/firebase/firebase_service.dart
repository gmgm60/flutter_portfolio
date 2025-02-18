import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio/core/firebase/firebase_options.dart';

/// Service class to handle Firebase initialization and provide access to Firebase services
@singleton
class FirebaseService {
  late final FirebaseAuth _auth;
  late final FirebaseFirestore _firestore;
  late final FirebaseStorage _storage;
  late final FirebaseAnalytics _analytics;

  /// Initialize Firebase with the default options
  Future<void> init() async {
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
  }

  /// Configure Firestore settings
  Future<void> _configureFirestore() async {
    _firestore.settings = const Settings(
      persistenceEnabled: true,
      cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED,
    );
  }

  /// Configure Analytics settings
  Future<void> _configureAnalytics() async {
    await _analytics.setAnalyticsCollectionEnabled(true);
  }

  /// Get Firebase Auth instance
  FirebaseAuth get auth => _auth;

  /// Get Firestore instance
  FirebaseFirestore get firestore => _firestore;

  /// Get Storage instance
  FirebaseStorage get storage => _storage;

  /// Get Analytics instance
  FirebaseAnalytics get analytics => _analytics;
}