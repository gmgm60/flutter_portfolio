// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectEntity _$ProjectEntityFromJson(Map<String, dynamic> json) {
  return _ProjectEntity.fromJson(json);
}

/// @nodoc
mixin _$ProjectEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get technologies => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get projectUrl => throw _privateConstructorUsedError;
  String? get githubUrl => throw _privateConstructorUsedError;
  List<String>? get categories => throw _privateConstructorUsedError;
  bool? get featured => throw _privateConstructorUsedError;

  /// Serializes this ProjectEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectEntityCopyWith<ProjectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEntityCopyWith<$Res> {
  factory $ProjectEntityCopyWith(
          ProjectEntity value, $Res Function(ProjectEntity) then) =
      _$ProjectEntityCopyWithImpl<$Res, ProjectEntity>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      List<String> technologies,
      DateTime createdAt,
      String? imageUrl,
      String? projectUrl,
      String? githubUrl,
      List<String>? categories,
      bool? featured});
}

/// @nodoc
class _$ProjectEntityCopyWithImpl<$Res, $Val extends ProjectEntity>
    implements $ProjectEntityCopyWith<$Res> {
  _$ProjectEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? technologies = null,
    Object? createdAt = null,
    Object? imageUrl = freezed,
    Object? projectUrl = freezed,
    Object? githubUrl = freezed,
    Object? categories = freezed,
    Object? featured = freezed,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      technologies: null == technologies
          ? _value.technologies
          : technologies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      projectUrl: freezed == projectUrl
          ? _value.projectUrl
          : projectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      githubUrl: freezed == githubUrl
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectEntityImplCopyWith<$Res>
    implements $ProjectEntityCopyWith<$Res> {
  factory _$$ProjectEntityImplCopyWith(
          _$ProjectEntityImpl value, $Res Function(_$ProjectEntityImpl) then) =
      __$$ProjectEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      List<String> technologies,
      DateTime createdAt,
      String? imageUrl,
      String? projectUrl,
      String? githubUrl,
      List<String>? categories,
      bool? featured});
}

/// @nodoc
class __$$ProjectEntityImplCopyWithImpl<$Res>
    extends _$ProjectEntityCopyWithImpl<$Res, _$ProjectEntityImpl>
    implements _$$ProjectEntityImplCopyWith<$Res> {
  __$$ProjectEntityImplCopyWithImpl(
      _$ProjectEntityImpl _value, $Res Function(_$ProjectEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? technologies = null,
    Object? createdAt = null,
    Object? imageUrl = freezed,
    Object? projectUrl = freezed,
    Object? githubUrl = freezed,
    Object? categories = freezed,
    Object? featured = freezed,
  }) {
    return _then(_$ProjectEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      technologies: null == technologies
          ? _value._technologies
          : technologies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      projectUrl: freezed == projectUrl
          ? _value.projectUrl
          : projectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      githubUrl: freezed == githubUrl
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectEntityImpl implements _ProjectEntity {
  const _$ProjectEntityImpl(
      {required this.id,
      required this.title,
      required this.description,
      required final List<String> technologies,
      required this.createdAt,
      this.imageUrl,
      this.projectUrl,
      this.githubUrl,
      final List<String>? categories,
      this.featured})
      : _technologies = technologies,
        _categories = categories;

  factory _$ProjectEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  final List<String> _technologies;
  @override
  List<String> get technologies {
    if (_technologies is EqualUnmodifiableListView) return _technologies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_technologies);
  }

  @override
  final DateTime createdAt;
  @override
  final String? imageUrl;
  @override
  final String? projectUrl;
  @override
  final String? githubUrl;
  final List<String>? _categories;
  @override
  List<String>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? featured;

  @override
  String toString() {
    return 'ProjectEntity(id: $id, title: $title, description: $description, technologies: $technologies, createdAt: $createdAt, imageUrl: $imageUrl, projectUrl: $projectUrl, githubUrl: $githubUrl, categories: $categories, featured: $featured)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._technologies, _technologies) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.projectUrl, projectUrl) ||
                other.projectUrl == projectUrl) &&
            (identical(other.githubUrl, githubUrl) ||
                other.githubUrl == githubUrl) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.featured, featured) ||
                other.featured == featured));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      const DeepCollectionEquality().hash(_technologies),
      createdAt,
      imageUrl,
      projectUrl,
      githubUrl,
      const DeepCollectionEquality().hash(_categories),
      featured);

  /// Create a copy of ProjectEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectEntityImplCopyWith<_$ProjectEntityImpl> get copyWith =>
      __$$ProjectEntityImplCopyWithImpl<_$ProjectEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectEntityImplToJson(
      this,
    );
  }
}

abstract class _ProjectEntity implements ProjectEntity {
  const factory _ProjectEntity(
      {required final String id,
      required final String title,
      required final String description,
      required final List<String> technologies,
      required final DateTime createdAt,
      final String? imageUrl,
      final String? projectUrl,
      final String? githubUrl,
      final List<String>? categories,
      final bool? featured}) = _$ProjectEntityImpl;

  factory _ProjectEntity.fromJson(Map<String, dynamic> json) =
      _$ProjectEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  List<String> get technologies;
  @override
  DateTime get createdAt;
  @override
  String? get imageUrl;
  @override
  String? get projectUrl;
  @override
  String? get githubUrl;
  @override
  List<String>? get categories;
  @override
  bool? get featured;

  /// Create a copy of ProjectEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectEntityImplCopyWith<_$ProjectEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
