import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/error/app_error.dart';
import 'package:portfolio/domain/entities/project.dart';
import 'package:portfolio/domain/entities/project_entity.dart';
import 'package:portfolio/domain/repositories/project_repository.dart';
import 'package:portfolio/data/repositories/project_repository_impl.dart';
import 'package:portfolio/data/datasources/impl/firebase_project_datasource_impl.dart';
import 'package:dartz/dartz.dart';

final projectRepositoryProvider = Provider<ProjectRepository>((ref) {
  final dataSource = FirebaseProjectDataSourceImpl();
  return ProjectRepositoryImpl(dataSource);
});

final projectsProvider =
    FutureProvider<Either<AppError, List<ProjectEntity>>>((ref) {
  final repository = ref.watch(projectRepositoryProvider);
  return repository.getAllProjects();
});

final projectLoadingProvider = StateProvider<bool>((ref) => false);
final projectErrorProvider = StateProvider<String?>((ref) => null);

final projectControllerProvider = Provider((ref) {
  return ProjectController(ref.watch(projectRepositoryProvider), ref);
});

class ProjectController {
  final ProjectRepository _repository;
  final Ref _ref;

  ProjectController(this._repository, this._ref);

  Future<Either<AppError, ProjectEntity>> createProject(
      Project project) async {
    try {
      _ref.read(projectLoadingProvider.notifier).state = true;
      _ref.read(projectErrorProvider.notifier).state = null;
      final result = await _repository.createProject(ProjectEntityMapper.fromModel(project));
      return result.fold(
        (error) {
          _ref.read(projectErrorProvider.notifier).state = error.message;
          return Left(error);
        },
        (project) => Right(project),
      );
    } finally {
      _ref.read(projectLoadingProvider.notifier).state = false;
    }
  }

  Future<Either<AppError, ProjectEntity>> updateProject(
      ProjectEntity project) async {
    try {
      _ref.read(projectLoadingProvider.notifier).state = true;
      _ref.read(projectErrorProvider.notifier).state = null;
      final result = await _repository.updateProject(project);
      return result.fold(
        (error) {
          _ref.read(projectErrorProvider.notifier).state = error.message;
          return Left(error);
        },
        (project) => Right(project),
      );
    } finally {
      _ref.read(projectLoadingProvider.notifier).state = false;
    }
  }

  Future<Either<AppError, void>> deleteProject(String id) async {
    try {
      _ref.read(projectLoadingProvider.notifier).state = true;
      _ref.read(projectErrorProvider.notifier).state = null;
      final result = await _repository.deleteProject(id);
      return result.fold(
        (error) {
          _ref.read(projectErrorProvider.notifier).state = error.message;
          return Left(error);
        },
        (success) => const Right(null),
      );
    } finally {
      _ref.read(projectLoadingProvider.notifier).state = false;
    }
  }
}
