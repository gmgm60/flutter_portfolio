import 'package:dartz/dartz.dart';
import 'package:portfolio/core/error/app_error.dart';
import 'package:portfolio/domain/entities/skill_entity.dart';

/// Repository interface for skill-related operations
abstract class SkillRepository {
  /// Get all skills
  Future<Either<AppError, List<SkillEntity>>> getAllSkills();

  /// Get a single skill by ID
  Future<Either<AppError, SkillEntity>> getSkillById(String id);

  /// Create a new skill
  Future<Either<AppError, SkillEntity>> createSkill(SkillEntity skill);

  /// Update an existing skill
  Future<Either<AppError, SkillEntity>> updateSkill(SkillEntity skill);

  /// Delete a skill
  Future<Either<AppError, void>> deleteSkill(String id);

  /// Get all skill categories
  Future<Either<AppError, List<SkillCategoryEntity>>> getAllCategories();

  /// Get skills by category
  Future<Either<AppError, List<SkillEntity>>> getSkillsByCategory(String categoryId);

  /// Get skills by proficiency level
  Future<Either<AppError, List<SkillEntity>>> getSkillsByProficiency(int minProficiency);

  /// Search skills by query
  Future<Either<AppError, List<SkillEntity>>> searchSkills(String query);
}