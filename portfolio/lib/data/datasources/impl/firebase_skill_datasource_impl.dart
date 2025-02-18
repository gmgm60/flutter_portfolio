import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/data/datasources/firebase_skill_datasource.dart';
import 'package:portfolio/domain/entities/skill_entity.dart';

/// Implementation of FirebaseSkillDataSource using Cloud Firestore
class FirebaseSkillDataSourceImpl implements FirebaseSkillDataSource {
  final FirebaseFirestore _firestore;
  final String _collection = 'skills';
  final String _categoryCollection = 'skill_categories';

  FirebaseSkillDataSourceImpl({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  @override
  Future<List<SkillEntity>> getAllSkills() async {
    final snapshot = await _firestore.collection(_collection).get();
    return snapshot.docs
        .map((doc) => SkillEntity.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }

  @override
  Future<SkillEntity> getSkillById(String id) async {
    final doc = await _firestore.collection(_collection).doc(id).get();
    if (!doc.exists) {
      throw Exception('Skill not found');
    }
    return SkillEntity.fromJson({...doc.data()!, 'id': doc.id});
  }

  @override
  Future<SkillEntity> createSkill(SkillEntity skill) async {
    final docRef = await _firestore.collection(_collection).add({
      ...skill.toJson(),
      'lastUsed': FieldValue.serverTimestamp(),
    });
    return skill.copyWith(id: docRef.id);
  }

  @override
  Future<SkillEntity> updateSkill(SkillEntity skill) async {
    await _firestore.collection(_collection).doc(skill.id).update(skill.toJson());
    return skill;
  }

  @override
  Future<void> deleteSkill(String id) async {
    await _firestore.collection(_collection).doc(id).delete();
  }

  @override
  Future<List<SkillCategoryEntity>> getAllCategories() async {
    final snapshot = await _firestore.collection(_categoryCollection).get();
    return snapshot.docs
        .map((doc) =>
            SkillCategoryEntity.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }

  @override
  Future<List<SkillEntity>> getSkillsByCategory(String categoryId) async {
    final snapshot = await _firestore
        .collection(_collection)
        .where('category', isEqualTo: categoryId)
        .get();
    return snapshot.docs
        .map((doc) => SkillEntity.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }

  @override
  Future<List<SkillEntity>> getSkillsByProficiency(int minProficiency) async {
    final snapshot = await _firestore
        .collection(_collection)
        .where('proficiency', isGreaterThanOrEqualTo: minProficiency)
        .get();
    return snapshot.docs
        .map((doc) => SkillEntity.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }

  @override
  Future<List<SkillEntity>> searchSkills(String query) async {
    final snapshot = await _firestore
        .collection(_collection)
        .where('name', isGreaterThanOrEqualTo: query)
        .where('name', isLessThanOrEqualTo: query + '\uf8ff')
        .get();

    return snapshot.docs
        .map((doc) => SkillEntity.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }
}