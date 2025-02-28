import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/domain/entities/project_entity.dart';

class ProjectModel  {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final List<String> technologies;
  final String githubUrl;
  final String? liveUrl;
  final DateTime createdAt;

  const ProjectModel({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.technologies,
    required this.githubUrl,
    this.liveUrl,
    required this.createdAt,
  });

  String get projectUrl => liveUrl ?? '';

  factory ProjectModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return ProjectModel(
      id: doc.id,
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      imageUrl: data['imageUrl'] ?? '',
      technologies: List<String>.from(data['technologies'] ?? []),
      githubUrl: data['githubUrl'] ?? '',
      liveUrl: data['liveUrl'],
      createdAt: (data['createdAt'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
      'technologies': technologies,
      'githubUrl': githubUrl,
      'liveUrl': liveUrl,
      'createdAt': Timestamp.fromDate(createdAt),
    };
  }

  factory ProjectModel.fromEntity(ProjectEntity entity) {
    return ProjectModel(
      id: entity.id,
      title: entity.title,
      description: entity.description,
      imageUrl: entity.imageUrl ?? '',
      technologies: entity.technologies,
      githubUrl: entity.githubUrl ?? '',
      liveUrl: entity.projectUrl,
      createdAt: entity.createdAt,
    );
  }
}