import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/error/app_error.dart';
import 'package:portfolio/data/datasources/impl/firebase_skill_datasource_impl.dart';
import 'package:portfolio/domain/entities/skill_entity.dart';
import 'package:portfolio/domain/repositories/skill_repository.dart';
import 'package:portfolio/data/repositories/skill_repository_impl.dart';

final skillRepositoryProvider = Provider<SkillRepository>((ref) {
  final dataSource = FirebaseSkillDataSourceImpl();
  return SkillRepositoryImpl(dataSource);
});

final skillsProvider = AutoDisposeFutureProvider<Either<AppError, List<SkillEntity>>>((ref) {
  return ref.watch(skillControllerProvider).getSkills();
});

final skillControllerProvider = Provider((ref) {
  return SkillController(ref);
});

class SkillController {
  final Ref _ref;

  SkillController(this._ref);

  Future<Either<AppError, List<SkillEntity>>> getSkills() async {
    final repository = _ref.read(skillRepositoryProvider);
    return await repository.getAllSkills();
  }

  Future<Either<AppError, SkillEntity>> createSkill(SkillEntity skill) async {
    final repository = _ref.read(skillRepositoryProvider);
    return await repository.createSkill(skill);
  }

  Future<Either<AppError, SkillEntity>> updateSkill(SkillEntity skill) async {
    final repository = _ref.read(skillRepositoryProvider);
    return await repository.updateSkill(skill);
  }

  Future<Either<AppError, void>> deleteSkill(String id) async {
    final repository = _ref.read(skillRepositoryProvider);
    return await repository.deleteSkill(id);
  }
}