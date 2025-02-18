// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlogPostEntity _$BlogPostEntityFromJson(Map<String, dynamic> json) {
  return _BlogPostEntity.fromJson(json);
}

/// @nodoc
mixin _$BlogPostEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String? get excerpt => throw _privateConstructorUsedError;
  String? get featuredImageUrl => throw _privateConstructorUsedError;
  String? get seoTitle => throw _privateConstructorUsedError;
  String? get seoDescription => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  int? get readTimeMinutes => throw _privateConstructorUsedError;
  bool? get published => throw _privateConstructorUsedError;
  List<String>? get relatedPosts => throw _privateConstructorUsedError;

  /// Serializes this BlogPostEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlogPostEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlogPostEntityCopyWith<BlogPostEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogPostEntityCopyWith<$Res> {
  factory $BlogPostEntityCopyWith(
          BlogPostEntity value, $Res Function(BlogPostEntity) then) =
      _$BlogPostEntityCopyWithImpl<$Res, BlogPostEntity>;
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      String author,
      DateTime publishedAt,
      List<String> tags,
      String? excerpt,
      String? featuredImageUrl,
      String? seoTitle,
      String? seoDescription,
      Map<String, dynamic>? metadata,
      int? readTimeMinutes,
      bool? published,
      List<String>? relatedPosts});
}

/// @nodoc
class _$BlogPostEntityCopyWithImpl<$Res, $Val extends BlogPostEntity>
    implements $BlogPostEntityCopyWith<$Res> {
  _$BlogPostEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlogPostEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? author = null,
    Object? publishedAt = null,
    Object? tags = null,
    Object? excerpt = freezed,
    Object? featuredImageUrl = freezed,
    Object? seoTitle = freezed,
    Object? seoDescription = freezed,
    Object? metadata = freezed,
    Object? readTimeMinutes = freezed,
    Object? published = freezed,
    Object? relatedPosts = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      excerpt: freezed == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String?,
      featuredImageUrl: freezed == featuredImageUrl
          ? _value.featuredImageUrl
          : featuredImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      seoTitle: freezed == seoTitle
          ? _value.seoTitle
          : seoTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      seoDescription: freezed == seoDescription
          ? _value.seoDescription
          : seoDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      readTimeMinutes: freezed == readTimeMinutes
          ? _value.readTimeMinutes
          : readTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      published: freezed == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as bool?,
      relatedPosts: freezed == relatedPosts
          ? _value.relatedPosts
          : relatedPosts // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogPostEntityImplCopyWith<$Res>
    implements $BlogPostEntityCopyWith<$Res> {
  factory _$$BlogPostEntityImplCopyWith(_$BlogPostEntityImpl value,
          $Res Function(_$BlogPostEntityImpl) then) =
      __$$BlogPostEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      String author,
      DateTime publishedAt,
      List<String> tags,
      String? excerpt,
      String? featuredImageUrl,
      String? seoTitle,
      String? seoDescription,
      Map<String, dynamic>? metadata,
      int? readTimeMinutes,
      bool? published,
      List<String>? relatedPosts});
}

/// @nodoc
class __$$BlogPostEntityImplCopyWithImpl<$Res>
    extends _$BlogPostEntityCopyWithImpl<$Res, _$BlogPostEntityImpl>
    implements _$$BlogPostEntityImplCopyWith<$Res> {
  __$$BlogPostEntityImplCopyWithImpl(
      _$BlogPostEntityImpl _value, $Res Function(_$BlogPostEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlogPostEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? author = null,
    Object? publishedAt = null,
    Object? tags = null,
    Object? excerpt = freezed,
    Object? featuredImageUrl = freezed,
    Object? seoTitle = freezed,
    Object? seoDescription = freezed,
    Object? metadata = freezed,
    Object? readTimeMinutes = freezed,
    Object? published = freezed,
    Object? relatedPosts = freezed,
  }) {
    return _then(_$BlogPostEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      excerpt: freezed == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String?,
      featuredImageUrl: freezed == featuredImageUrl
          ? _value.featuredImageUrl
          : featuredImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      seoTitle: freezed == seoTitle
          ? _value.seoTitle
          : seoTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      seoDescription: freezed == seoDescription
          ? _value.seoDescription
          : seoDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      readTimeMinutes: freezed == readTimeMinutes
          ? _value.readTimeMinutes
          : readTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      published: freezed == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as bool?,
      relatedPosts: freezed == relatedPosts
          ? _value._relatedPosts
          : relatedPosts // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlogPostEntityImpl implements _BlogPostEntity {
  const _$BlogPostEntityImpl(
      {required this.id,
      required this.title,
      required this.content,
      required this.author,
      required this.publishedAt,
      required final List<String> tags,
      this.excerpt,
      this.featuredImageUrl,
      this.seoTitle,
      this.seoDescription,
      final Map<String, dynamic>? metadata,
      this.readTimeMinutes,
      this.published,
      final List<String>? relatedPosts})
      : _tags = tags,
        _metadata = metadata,
        _relatedPosts = relatedPosts;

  factory _$BlogPostEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogPostEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String content;
  @override
  final String author;
  @override
  final DateTime publishedAt;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String? excerpt;
  @override
  final String? featuredImageUrl;
  @override
  final String? seoTitle;
  @override
  final String? seoDescription;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final int? readTimeMinutes;
  @override
  final bool? published;
  final List<String>? _relatedPosts;
  @override
  List<String>? get relatedPosts {
    final value = _relatedPosts;
    if (value == null) return null;
    if (_relatedPosts is EqualUnmodifiableListView) return _relatedPosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BlogPostEntity(id: $id, title: $title, content: $content, author: $author, publishedAt: $publishedAt, tags: $tags, excerpt: $excerpt, featuredImageUrl: $featuredImageUrl, seoTitle: $seoTitle, seoDescription: $seoDescription, metadata: $metadata, readTimeMinutes: $readTimeMinutes, published: $published, relatedPosts: $relatedPosts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogPostEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.excerpt, excerpt) || other.excerpt == excerpt) &&
            (identical(other.featuredImageUrl, featuredImageUrl) ||
                other.featuredImageUrl == featuredImageUrl) &&
            (identical(other.seoTitle, seoTitle) ||
                other.seoTitle == seoTitle) &&
            (identical(other.seoDescription, seoDescription) ||
                other.seoDescription == seoDescription) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.readTimeMinutes, readTimeMinutes) ||
                other.readTimeMinutes == readTimeMinutes) &&
            (identical(other.published, published) ||
                other.published == published) &&
            const DeepCollectionEquality()
                .equals(other._relatedPosts, _relatedPosts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      content,
      author,
      publishedAt,
      const DeepCollectionEquality().hash(_tags),
      excerpt,
      featuredImageUrl,
      seoTitle,
      seoDescription,
      const DeepCollectionEquality().hash(_metadata),
      readTimeMinutes,
      published,
      const DeepCollectionEquality().hash(_relatedPosts));

  /// Create a copy of BlogPostEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogPostEntityImplCopyWith<_$BlogPostEntityImpl> get copyWith =>
      __$$BlogPostEntityImplCopyWithImpl<_$BlogPostEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogPostEntityImplToJson(
      this,
    );
  }
}

abstract class _BlogPostEntity implements BlogPostEntity {
  const factory _BlogPostEntity(
      {required final String id,
      required final String title,
      required final String content,
      required final String author,
      required final DateTime publishedAt,
      required final List<String> tags,
      final String? excerpt,
      final String? featuredImageUrl,
      final String? seoTitle,
      final String? seoDescription,
      final Map<String, dynamic>? metadata,
      final int? readTimeMinutes,
      final bool? published,
      final List<String>? relatedPosts}) = _$BlogPostEntityImpl;

  factory _BlogPostEntity.fromJson(Map<String, dynamic> json) =
      _$BlogPostEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get content;
  @override
  String get author;
  @override
  DateTime get publishedAt;
  @override
  List<String> get tags;
  @override
  String? get excerpt;
  @override
  String? get featuredImageUrl;
  @override
  String? get seoTitle;
  @override
  String? get seoDescription;
  @override
  Map<String, dynamic>? get metadata;
  @override
  int? get readTimeMinutes;
  @override
  bool? get published;
  @override
  List<String>? get relatedPosts;

  /// Create a copy of BlogPostEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogPostEntityImplCopyWith<_$BlogPostEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlogCategoryEntity _$BlogCategoryEntityFromJson(Map<String, dynamic> json) {
  return _BlogCategoryEntity.fromJson(json);
}

/// @nodoc
mixin _$BlogCategoryEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  int? get displayOrder => throw _privateConstructorUsedError;
  String? get parentCategoryId => throw _privateConstructorUsedError;

  /// Serializes this BlogCategoryEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlogCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlogCategoryEntityCopyWith<BlogCategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogCategoryEntityCopyWith<$Res> {
  factory $BlogCategoryEntityCopyWith(
          BlogCategoryEntity value, $Res Function(BlogCategoryEntity) then) =
      _$BlogCategoryEntityCopyWithImpl<$Res, BlogCategoryEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String? slug,
      int? displayOrder,
      String? parentCategoryId});
}

/// @nodoc
class _$BlogCategoryEntityCopyWithImpl<$Res, $Val extends BlogCategoryEntity>
    implements $BlogCategoryEntityCopyWith<$Res> {
  _$BlogCategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlogCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? slug = freezed,
    Object? displayOrder = freezed,
    Object? parentCategoryId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      parentCategoryId: freezed == parentCategoryId
          ? _value.parentCategoryId
          : parentCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogCategoryEntityImplCopyWith<$Res>
    implements $BlogCategoryEntityCopyWith<$Res> {
  factory _$$BlogCategoryEntityImplCopyWith(_$BlogCategoryEntityImpl value,
          $Res Function(_$BlogCategoryEntityImpl) then) =
      __$$BlogCategoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String? slug,
      int? displayOrder,
      String? parentCategoryId});
}

/// @nodoc
class __$$BlogCategoryEntityImplCopyWithImpl<$Res>
    extends _$BlogCategoryEntityCopyWithImpl<$Res, _$BlogCategoryEntityImpl>
    implements _$$BlogCategoryEntityImplCopyWith<$Res> {
  __$$BlogCategoryEntityImplCopyWithImpl(_$BlogCategoryEntityImpl _value,
      $Res Function(_$BlogCategoryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlogCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? slug = freezed,
    Object? displayOrder = freezed,
    Object? parentCategoryId = freezed,
  }) {
    return _then(_$BlogCategoryEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      parentCategoryId: freezed == parentCategoryId
          ? _value.parentCategoryId
          : parentCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlogCategoryEntityImpl implements _BlogCategoryEntity {
  const _$BlogCategoryEntityImpl(
      {required this.id,
      required this.name,
      required this.description,
      this.slug,
      this.displayOrder,
      this.parentCategoryId});

  factory _$BlogCategoryEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogCategoryEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String? slug;
  @override
  final int? displayOrder;
  @override
  final String? parentCategoryId;

  @override
  String toString() {
    return 'BlogCategoryEntity(id: $id, name: $name, description: $description, slug: $slug, displayOrder: $displayOrder, parentCategoryId: $parentCategoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogCategoryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.displayOrder, displayOrder) ||
                other.displayOrder == displayOrder) &&
            (identical(other.parentCategoryId, parentCategoryId) ||
                other.parentCategoryId == parentCategoryId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, slug, displayOrder, parentCategoryId);

  /// Create a copy of BlogCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogCategoryEntityImplCopyWith<_$BlogCategoryEntityImpl> get copyWith =>
      __$$BlogCategoryEntityImplCopyWithImpl<_$BlogCategoryEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogCategoryEntityImplToJson(
      this,
    );
  }
}

abstract class _BlogCategoryEntity implements BlogCategoryEntity {
  const factory _BlogCategoryEntity(
      {required final String id,
      required final String name,
      required final String description,
      final String? slug,
      final int? displayOrder,
      final String? parentCategoryId}) = _$BlogCategoryEntityImpl;

  factory _BlogCategoryEntity.fromJson(Map<String, dynamic> json) =
      _$BlogCategoryEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String? get slug;
  @override
  int? get displayOrder;
  @override
  String? get parentCategoryId;

  /// Create a copy of BlogCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogCategoryEntityImplCopyWith<_$BlogCategoryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
