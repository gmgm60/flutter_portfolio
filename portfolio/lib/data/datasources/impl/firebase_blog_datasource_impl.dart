import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/data/datasources/firebase_blog_datasource.dart';
import 'package:portfolio/domain/entities/blog_entity.dart';

/// Implementation of FirebaseBlogDataSource using Cloud Firestore
class FirebaseBlogDataSourceImpl implements FirebaseBlogDataSource {
  final FirebaseFirestore _firestore;
  final String _collection = 'blogs';
  final String _categoryCollection = 'blog_categories';

  FirebaseBlogDataSourceImpl({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  @override
  Future<List<BlogPostEntity>> getAllPosts() async {
    final snapshot = await _firestore.collection(_collection).get();
    return snapshot.docs
        .map((doc) => BlogPostEntity.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }

  @override
  Future<BlogPostEntity> getPostById(String id) async {
    final doc = await _firestore.collection(_collection).doc(id).get();
    if (!doc.exists) {
      throw Exception('Blog post not found');
    }
    return BlogPostEntity.fromJson({...doc.data()!, 'id': doc.id});
  }

  @override
  Future<BlogPostEntity> createPost(BlogPostEntity post) async {
    final docRef = await _firestore.collection(_collection).add({
      ...post.toJson(),
      'publishedAt': FieldValue.serverTimestamp(),
    });
    return post.copyWith(id: docRef.id);
  }

  @override
  Future<BlogPostEntity> updatePost(BlogPostEntity post) async {
    await _firestore.collection(_collection).doc(post.id).update(post.toJson());
    return post;
  }

  @override
  Future<void> deletePost(String id) async {
    await _firestore.collection(_collection).doc(id).delete();
  }

  @override
  Future<List<BlogCategoryEntity>> getAllCategories() async {
    final snapshot = await _firestore.collection(_categoryCollection).get();
    return snapshot.docs
        .map((doc) =>
            BlogCategoryEntity.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }

  @override
  Future<List<BlogPostEntity>> getPostsByCategory(String categoryId) async {
    final snapshot = await _firestore
        .collection(_collection)
        .where('categories', arrayContains: categoryId)
        .get();
    return snapshot.docs
        .map((doc) => BlogPostEntity.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }

  @override
  Future<List<BlogPostEntity>> getPostsByTag(String tag) async {
    final snapshot = await _firestore
        .collection(_collection)
        .where('tags', arrayContains: tag)
        .get();
    return snapshot.docs
        .map((doc) => BlogPostEntity.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }

  @override
  Future<List<BlogPostEntity>> searchPosts(String query) async {
    // Note: For proper full-text search, consider using Algolia or ElasticSearch
    // This is a simple implementation that searches in title and content
    final snapshot = await _firestore
        .collection(_collection)
        .where('title', isGreaterThanOrEqualTo: query)
        .where('title', isLessThanOrEqualTo: '$query\uf8ff')
        .get();

    return snapshot.docs
        .map((doc) => BlogPostEntity.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }
}