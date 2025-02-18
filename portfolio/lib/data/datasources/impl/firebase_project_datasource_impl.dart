import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/data/datasources/firebase_project_datasource.dart';
import 'package:portfolio/domain/entities/project_entity.dart';

/// Implementation of FirebaseProjectDataSource using Cloud Firestore
class FirebaseProjectDataSourceImpl implements FirebaseProjectDataSource {
  final FirebaseFirestore _firestore;
  final String _collection = 'projects';

  FirebaseProjectDataSourceImpl({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  @override
  Future<List<ProjectEntity>> getAllProjects() async {
    final snapshot = await _firestore.collection(_collection).get();
    return snapshot.docs
        .map((doc) => ProjectEntity.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }

  @override
  Future<ProjectEntity> getProjectById(String id) async {
    final doc = await _firestore.collection(_collection).doc(id).get();
    if (!doc.exists) {
      throw Exception('Project not found');
    }
    return ProjectEntity.fromJson({...doc.data()!, 'id': doc.id});
  }

  @override
  Future<ProjectEntity> createProject(ProjectEntity project) async {
    final docRef = await _firestore.collection(_collection).add({
      ...project.toJson(),
      'createdAt': FieldValue.serverTimestamp(),
    });
    return project.copyWith(id: docRef.id);
  }

  @override
  Future<ProjectEntity> updateProject(ProjectEntity project) async {
    await _firestore.collection(_collection).doc(project.id).update(project.toJson());
    return project;
  }

  @override
  Future<void> deleteProject(String id) async {
    await _firestore.collection(_collection).doc(id).delete();
  }

  @override
  Future<List<ProjectEntity>> getFeaturedProjects() async {
    final snapshot = await _firestore
        .collection(_collection)
        .where('featured', isEqualTo: true)
        .get();
    return snapshot.docs
        .map((doc) => ProjectEntity.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }

  @override
  Future<List<ProjectEntity>> getProjectsByCategory(String category) async {
    final snapshot = await _firestore
        .collection(_collection)
        .where('categories', arrayContains: category)
        .get();
    return snapshot.docs
        .map((doc) => ProjectEntity.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }

  @override
  Future<List<ProjectEntity>> getProjectsByTechnology(String technology) async {
    final snapshot = await _firestore
        .collection(_collection)
        .where('technologies', arrayContains: technology)
        .get();
    return snapshot.docs
        .map((doc) => ProjectEntity.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }

  @override
  Future<List<ProjectEntity>> searchProjects(String query) async {
    final snapshot = await _firestore
        .collection(_collection)
        .where('title', isGreaterThanOrEqualTo: query)
        .where('title', isLessThanOrEqualTo: query + '\uf8ff')
        .get();

    return snapshot.docs
        .map((doc) => ProjectEntity.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }
}