import 'package:dartz/dartz.dart';
import 'package:portfolio/core/error/app_error.dart';
import 'package:portfolio/data/datasources/firebase_project_datasource.dart';
import 'package:portfolio/domain/entities/project_entity.dart';
import 'package:portfolio/domain/repositories/project_repository.dart';

/// Implementation of ProjectRepository using FirebaseProjectDataSource
class ProjectRepositoryImpl implements ProjectRepository {
  final FirebaseProjectDataSource _dataSource;

  ProjectRepositoryImpl(this._dataSource);

  @override
  Future<Either<AppError, List<ProjectEntity>>> getAllProjects() async {
    try {
      final projects = await _dataSource.getAllProjects();
      return Right(projects);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to fetch projects',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, ProjectEntity>> getProjectById(String id) async {
    try {
      final project = await _dataSource.getProjectById(id);
      return Right(project);
    } catch (e, stackTrace) {
      return Left(AppError.notFound(
        message: 'Project not found',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, ProjectEntity>> createProject(ProjectEntity project) async {
    try {
      final createdProject = await _dataSource.createProject(project);
      return Right(createdProject);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to create project',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, ProjectEntity>> updateProject(ProjectEntity project) async {
    try {
      final updatedProject = await _dataSource.updateProject(project);
      return Right(updatedProject);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to update project',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, void>> deleteProject(String id) async {
    try {
      await _dataSource.deleteProject(id);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to delete project',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, List<ProjectEntity>>> getFeaturedProjects() async {
    try {
      final projects = await _dataSource.getFeaturedProjects();
      return Right(projects);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to fetch featured projects',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, List<ProjectEntity>>> getProjectsByCategory(String category) async {
    try {
      final projects = await _dataSource.getProjectsByCategory(category);
      return Right(projects);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to fetch projects by category',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, List<ProjectEntity>>> getProjectsByTechnology(String technology) async {
    try {
      final projects = await _dataSource.getProjectsByTechnology(technology);
      return Right(projects);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to fetch projects by technology',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, List<ProjectEntity>>> searchProjects(String query) async {
    try {
      final projects = await _dataSource.searchProjects(query);
      return Right(projects);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to search projects',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }
}