import 'package:portfolio/domain/entities/skill_entity.dart';

/// Interface for Firebase skill data source operations
abstract class FirebaseSkillDataSource {
  /// Get all skills from Firebase
  Future<List<SkillEntity>> getAllSkills();

  /// Get a single skill by ID from Firebase
  Future<SkillEntity> getSkillById(String id);

  /// Create a new skill in Firebase
  Future<SkillEntity> createSkill(SkillEntity skill);

  /// Update an existing skill in Firebase
  Future<SkillEntity> updateSkill(SkillEntity skill);

  /// Delete a skill from Firebase
  Future<void> deleteSkill(String id);

  /// Get all skill categories from Firebase
  Future<List<SkillCategoryEntity>> getAllCategories();

  /// Get skills by category from Firebase
  Future<List<SkillEntity>> getSkillsByCategory(String categoryId);

  /// Get skills by proficiency level from Firebase
  Future<List<SkillEntity>> getSkillsByProficiency(int minProficiency);

  /// Search skills by query in Firebase
  Future<List<SkillEntity>> searchSkills(String query);
}