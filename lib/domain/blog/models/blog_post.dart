class BlogPost {
  final String title;
  final String excerpt;
  final DateTime date;
  final String imageUrl;

  const BlogPost({
    required this.title,
    required this.excerpt,
    required this.date,
    required this.imageUrl,
  });

  BlogPost copyWith({
    String? title,
    String? excerpt,
    DateTime? date,
    String? imageUrl,
  }) {
    return BlogPost(
      title: title ?? this.title,
      excerpt: excerpt ?? this.excerpt,
      date: date ?? this.date,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }
}