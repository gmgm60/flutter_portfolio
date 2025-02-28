import 'package:dartz/dartz.dart';
import 'package:portfolio/core/error/app_error.dart';
import 'package:portfolio/data/datasources/firebase_skill_datasource.dart';
import 'package:portfolio/domain/entities/skill_entity.dart';
import 'package:portfolio/domain/repositories/skill_repository.dart';

/// Implementation of SkillRepository using FirebaseSkillDataSource
class SkillRepositoryImpl implements SkillRepository {
  final FirebaseSkillDataSource _dataSource;

  SkillRepositoryImpl(this._dataSource);

  @override
  Future<Either<AppError, List<SkillEntity>>> getAllSkills() async {
    try {
      final skills = await _dataSource.getAllSkills();
      return Right(skills);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to fetch skills',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, SkillEntity>> getSkillById(String id) async {
    try {
      final skill = await _dataSource.getSkillById(id);
      return Right(skill);
    } catch (e, stackTrace) {
      return Left(AppError.notFound(
        message: 'Skill not found',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, SkillEntity>> createSkill(SkillEntity skill) async {
    try {
      final createdSkill = await _dataSource.createSkill(skill);
      return Right(createdSkill);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to create skill',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, SkillEntity>> updateSkill(SkillEntity skill) async {
    try {
      final updatedSkill = await _dataSource.updateSkill(skill);
      return Right(updatedSkill);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to update skill',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, void>> deleteSkill(String id) async {
    try {
      await _dataSource.deleteSkill(id);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to delete skill',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, List<SkillCategoryEntity>>> getAllCategories() async {
    try {
      final categories = await _dataSource.getAllCategories();
      return Right(categories);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to fetch skill categories',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, List<SkillEntity>>> getSkillsByCategory(String categoryId) async {
    try {
      final skills = await _dataSource.getSkillsByCategory(categoryId);
      return Right(skills);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to fetch skills by category',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, List<SkillEntity>>> getSkillsByProficiency(int minProficiency) async {
    try {
      final skills = await _dataSource.getSkillsByProficiency(minProficiency);
      return Right(skills);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to fetch skills by proficiency',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }

  @override
  Future<Either<AppError, List<SkillEntity>>> searchSkills(String query) async {
    try {
      final skills = await _dataSource.searchSkills(query);
      return Right(skills);
    } catch (e, stackTrace) {
      return Left(AppError.server(
        message: 'Failed to search skills',
        error: e,
        stackTrace: stackTrace,
      ));
    }
  }
}