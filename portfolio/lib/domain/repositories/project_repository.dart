import 'package:dartz/dartz.dart';
import 'package:portfolio/core/error/app_error.dart';
import 'package:portfolio/domain/entities/project_entity.dart';

/// Repository interface for project-related operations
abstract class ProjectRepository {
  /// Get all projects
  Future<Either<AppError, List<ProjectEntity>>> getAllProjects();

  /// Get a single project by ID
  Future<Either<AppError, ProjectEntity>> getProjectById(String id);

  /// Create a new project
  Future<Either<AppError, ProjectEntity>> createProject(ProjectEntity project);

  /// Update an existing project
  Future<Either<AppError, ProjectEntity>> updateProject(ProjectEntity project);

  /// Delete a project
  Future<Either<AppError, void>> deleteProject(String id);

  /// Get featured projects
  Future<Either<AppError, List<ProjectEntity>>> getFeaturedProjects();

  /// Get projects by category
  Future<Either<AppError, List<ProjectEntity>>> getProjectsByCategory(String category);

  /// Get projects by technology
  Future<Either<AppError, List<ProjectEntity>>> getProjectsByTechnology(String technology);

  /// Search projects by query
  Future<Either<AppError, List<ProjectEntity>>> searchProjects(String query);
}