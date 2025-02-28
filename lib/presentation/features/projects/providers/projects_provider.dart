import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/domain/entities/project_entity.dart';

final projectsProvider = StreamProvider<List<ProjectEntity>>((ref) {
  return FirebaseFirestore.instance
      .collection('projects')
      .orderBy('createdAt', descending: true)
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => ProjectEntity.fromJson({'id': doc.id, ...doc.data()}))
          .toList());
});