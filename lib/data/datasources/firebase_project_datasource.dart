import 'package:portfolio/domain/entities/project_entity.dart';

/// Interface for Firebase project data source operations
abstract class FirebaseProjectDataSource {
  /// Get all projects from Firebase
  Future<List<ProjectEntity>> getAllProjects();

  /// Get a single project by ID from Firebase
  Future<ProjectEntity> getProjectById(String id);

  /// Create a new project in Firebase
  Future<ProjectEntity> createProject(ProjectEntity project);

  /// Update an existing project in Firebase
  Future<ProjectEntity> updateProject(ProjectEntity project);

  /// Delete a project from Firebase
  Future<void> deleteProject(String id);

  /// Get featured projects from Firebase
  Future<List<ProjectEntity>> getFeaturedProjects();

  /// Get projects by category from Firebase
  Future<List<ProjectEntity>> getProjectsByCategory(String category);

  /// Get projects by technology from Firebase
  Future<List<ProjectEntity>> getProjectsByTechnology(String technology);

  /// Search projects by query in Firebase
  Future<List<ProjectEntity>> searchProjects(String query);
}