import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/domain/entities/project_entity.dart';
import 'package:portfolio/domain/repositories/project_repository.dart';

final projectsProvider = StateNotifierProvider<ProjectsNotifier, AsyncValue<List<ProjectEntity>>>(
  (ref) => ProjectsNotifier(ref.watch(projectRepositoryProvider)),
);

final projectRepositoryProvider = Provider<ProjectRepository>(
  (ref) => throw UnimplementedError('Provider was not initialized'),
);

class ProjectsNotifier extends StateNotifier<AsyncValue<List<ProjectEntity>>> {
  final ProjectRepository _repository;

  ProjectsNotifier(this._repository) : super(const AsyncValue.loading()) {
    loadProjects();
  }

  Future<void> loadProjects() async {
    state = const AsyncValue.loading();
    final result = await _repository.getAllProjects();
    state = result.fold(
      (error) => AsyncValue.error(error, StackTrace.current),
      (projects) => AsyncValue.data(projects),
    );
  }

  Future<void> createProject(ProjectEntity project) async {
    final result = await _repository.createProject(project);
    result.fold(
      (error) => state = AsyncValue.error(error, StackTrace.current),
      (newProject) => state.whenData(
        (projects) => state = AsyncValue.data([newProject, ...projects]),
      ),
    );
  }

  Future<void> updateProject(ProjectEntity project) async {
    final result = await _repository.updateProject(project);
    result.fold(
      (error) => state = AsyncValue.error(error, StackTrace.current),
      (updatedProject) => state.whenData(
        (projects) => state = AsyncValue.data(
          projects.map((p) => p.id == project.id ? updatedProject : p).toList(),
        ),
      ),
    );
  }

  Future<void> deleteProject(String id) async {
    final result = await _repository.deleteProject(id);
    result.fold(
      (error) => state = AsyncValue.error(error, StackTrace.current),
      (_) => state.whenData(
        (projects) => state = AsyncValue.data(
          projects.where((p) => p.id != id).toList(),
        ),
      ),
    );
  }

  Future<void> loadFeaturedProjects() async {
    state = const AsyncValue.loading();
    final result = await _repository.getFeaturedProjects();
    state = result.fold(
      (error) => AsyncValue.error(error, StackTrace.current),
      (projects) => AsyncValue.data(projects),
    );
  }

  Future<void> loadProjectsByCategory(String category) async {
    state = const AsyncValue.loading();
    final result = await _repository.getProjectsByCategory(category);
    state = result.fold(
      (error) => AsyncValue.error(error, StackTrace.current),
      (projects) => AsyncValue.data(projects),
    );
  }

  Future<void> loadProjectsByTechnology(String technology) async {
    state = const AsyncValue.loading();
    final result = await _repository.getProjectsByTechnology(technology);
    state = result.fold(
      (error) => AsyncValue.error(error, StackTrace.current),
      (projects) => AsyncValue.data(projects),
    );
  }

  Future<void> searchProjects(String query) async {
    state = const AsyncValue.loading();
    final result = await _repository.searchProjects(query);
    state = result.fold(
      (error) => AsyncValue.error(error, StackTrace.current),
      (projects) => AsyncValue.data(projects),
    );
  }
}