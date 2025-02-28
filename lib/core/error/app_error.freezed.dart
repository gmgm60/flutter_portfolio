// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppError {
  String? get message => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        network,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        server,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        notFound,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        validation,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        cache,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        network,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        server,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        unauthorized,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        notFound,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        validation,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        cache,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        network,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        server,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        unauthorized,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        notFound,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        validation,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        cache,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkError value) network,
    required TResult Function(ServerError value) server,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(ValidationError value) validation,
    required TResult Function(CacheError value) cache,
    required TResult Function(UnknownError value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkError value)? network,
    TResult? Function(ServerError value)? server,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(ValidationError value)? validation,
    TResult? Function(CacheError value)? cache,
    TResult? Function(UnknownError value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkError value)? network,
    TResult Function(ServerError value)? server,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(ValidationError value)? validation,
    TResult Function(CacheError value)? cache,
    TResult Function(UnknownError value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppErrorCopyWith<AppError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppErrorCopyWith<$Res> {
  factory $AppErrorCopyWith(AppError value, $Res Function(AppError) then) =
      _$AppErrorCopyWithImpl<$Res, AppError>;
  @useResult
  $Res call({String? message, dynamic error, StackTrace? stackTrace});
}

/// @nodoc
class _$AppErrorCopyWithImpl<$Res, $Val extends AppError>
    implements $AppErrorCopyWith<$Res> {
  _$AppErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NetworkErrorImplCopyWith<$Res>
    implements $AppErrorCopyWith<$Res> {
  factory _$$NetworkErrorImplCopyWith(
          _$NetworkErrorImpl value, $Res Function(_$NetworkErrorImpl) then) =
      __$$NetworkErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, dynamic error, StackTrace? stackTrace});
}

/// @nodoc
class __$$NetworkErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$NetworkErrorImpl>
    implements _$$NetworkErrorImplCopyWith<$Res> {
  __$$NetworkErrorImplCopyWithImpl(
      _$NetworkErrorImpl _value, $Res Function(_$NetworkErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$NetworkErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$NetworkErrorImpl extends NetworkError {
  const _$NetworkErrorImpl({this.message, this.error, this.stackTrace})
      : super._();

  @override
  final String? message;
  @override
  final dynamic error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'AppError.network(message: $message, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkErrorImplCopyWith<_$NetworkErrorImpl> get copyWith =>
      __$$NetworkErrorImplCopyWithImpl<_$NetworkErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        network,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        server,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        notFound,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        validation,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        cache,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        unknown,
  }) {
    return network(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        network,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        server,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        unauthorized,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        notFound,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        validation,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        cache,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        unknown,
  }) {
    return network?.call(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        network,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        server,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        unauthorized,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        notFound,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        validation,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        cache,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(message, error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkError value) network,
    required TResult Function(ServerError value) server,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(ValidationError value) validation,
    required TResult Function(CacheError value) cache,
    required TResult Function(UnknownError value) unknown,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkError value)? network,
    TResult? Function(ServerError value)? server,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(ValidationError value)? validation,
    TResult? Function(CacheError value)? cache,
    TResult? Function(UnknownError value)? unknown,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkError value)? network,
    TResult Function(ServerError value)? server,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(ValidationError value)? validation,
    TResult Function(CacheError value)? cache,
    TResult Function(UnknownError value)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class NetworkError extends AppError {
  const factory NetworkError(
      {final String? message,
      final dynamic error,
      final StackTrace? stackTrace}) = _$NetworkErrorImpl;
  const NetworkError._() : super._();

  @override
  String? get message;
  @override
  dynamic get error;
  @override
  StackTrace? get stackTrace;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkErrorImplCopyWith<_$NetworkErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res>
    implements $AppErrorCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, dynamic error, StackTrace? stackTrace});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ServerErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ServerErrorImpl extends ServerError {
  const _$ServerErrorImpl({this.message, this.error, this.stackTrace})
      : super._();

  @override
  final String? message;
  @override
  final dynamic error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'AppError.server(message: $message, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        network,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        server,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        notFound,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        validation,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        cache,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        unknown,
  }) {
    return server(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        network,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        server,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        unauthorized,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        notFound,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        validation,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        cache,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        unknown,
  }) {
    return server?.call(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        network,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        server,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        unauthorized,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        notFound,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        validation,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        cache,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message, error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkError value) network,
    required TResult Function(ServerError value) server,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(ValidationError value) validation,
    required TResult Function(CacheError value) cache,
    required TResult Function(UnknownError value) unknown,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkError value)? network,
    TResult? Function(ServerError value)? server,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(ValidationError value)? validation,
    TResult? Function(CacheError value)? cache,
    TResult? Function(UnknownError value)? unknown,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkError value)? network,
    TResult Function(ServerError value)? server,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(ValidationError value)? validation,
    TResult Function(CacheError value)? cache,
    TResult Function(UnknownError value)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class ServerError extends AppError {
  const factory ServerError(
      {final String? message,
      final dynamic error,
      final StackTrace? stackTrace}) = _$ServerErrorImpl;
  const ServerError._() : super._();

  @override
  String? get message;
  @override
  dynamic get error;
  @override
  StackTrace? get stackTrace;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedErrorImplCopyWith<$Res>
    implements $AppErrorCopyWith<$Res> {
  factory _$$UnauthorizedErrorImplCopyWith(_$UnauthorizedErrorImpl value,
          $Res Function(_$UnauthorizedErrorImpl) then) =
      __$$UnauthorizedErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, dynamic error, StackTrace? stackTrace});
}

/// @nodoc
class __$$UnauthorizedErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$UnauthorizedErrorImpl>
    implements _$$UnauthorizedErrorImplCopyWith<$Res> {
  __$$UnauthorizedErrorImplCopyWithImpl(_$UnauthorizedErrorImpl _value,
      $Res Function(_$UnauthorizedErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$UnauthorizedErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$UnauthorizedErrorImpl extends UnauthorizedError {
  const _$UnauthorizedErrorImpl({this.message, this.error, this.stackTrace})
      : super._();

  @override
  final String? message;
  @override
  final dynamic error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'AppError.unauthorized(message: $message, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedErrorImplCopyWith<_$UnauthorizedErrorImpl> get copyWith =>
      __$$UnauthorizedErrorImplCopyWithImpl<_$UnauthorizedErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        network,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        server,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        notFound,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        validation,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        cache,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        unknown,
  }) {
    return unauthorized(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        network,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        server,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        unauthorized,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        notFound,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        validation,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        cache,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        unknown,
  }) {
    return unauthorized?.call(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        network,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        server,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        unauthorized,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        notFound,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        validation,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        cache,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        unknown,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message, error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkError value) network,
    required TResult Function(ServerError value) server,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(ValidationError value) validation,
    required TResult Function(CacheError value) cache,
    required TResult Function(UnknownError value) unknown,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkError value)? network,
    TResult? Function(ServerError value)? server,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(ValidationError value)? validation,
    TResult? Function(CacheError value)? cache,
    TResult? Function(UnknownError value)? unknown,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkError value)? network,
    TResult Function(ServerError value)? server,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(ValidationError value)? validation,
    TResult Function(CacheError value)? cache,
    TResult Function(UnknownError value)? unknown,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class UnauthorizedError extends AppError {
  const factory UnauthorizedError(
      {final String? message,
      final dynamic error,
      final StackTrace? stackTrace}) = _$UnauthorizedErrorImpl;
  const UnauthorizedError._() : super._();

  @override
  String? get message;
  @override
  dynamic get error;
  @override
  StackTrace? get stackTrace;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnauthorizedErrorImplCopyWith<_$UnauthorizedErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundErrorImplCopyWith<$Res>
    implements $AppErrorCopyWith<$Res> {
  factory _$$NotFoundErrorImplCopyWith(
          _$NotFoundErrorImpl value, $Res Function(_$NotFoundErrorImpl) then) =
      __$$NotFoundErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, dynamic error, StackTrace? stackTrace});
}

/// @nodoc
class __$$NotFoundErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$NotFoundErrorImpl>
    implements _$$NotFoundErrorImplCopyWith<$Res> {
  __$$NotFoundErrorImplCopyWithImpl(
      _$NotFoundErrorImpl _value, $Res Function(_$NotFoundErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$NotFoundErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$NotFoundErrorImpl extends NotFoundError {
  const _$NotFoundErrorImpl({this.message, this.error, this.stackTrace})
      : super._();

  @override
  final String? message;
  @override
  final dynamic error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'AppError.notFound(message: $message, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundErrorImplCopyWith<_$NotFoundErrorImpl> get copyWith =>
      __$$NotFoundErrorImplCopyWithImpl<_$NotFoundErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        network,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        server,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        notFound,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        validation,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        cache,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        unknown,
  }) {
    return notFound(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        network,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        server,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        unauthorized,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        notFound,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        validation,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        cache,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        unknown,
  }) {
    return notFound?.call(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        network,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        server,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        unauthorized,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        notFound,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        validation,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        cache,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message, error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkError value) network,
    required TResult Function(ServerError value) server,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(ValidationError value) validation,
    required TResult Function(CacheError value) cache,
    required TResult Function(UnknownError value) unknown,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkError value)? network,
    TResult? Function(ServerError value)? server,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(ValidationError value)? validation,
    TResult? Function(CacheError value)? cache,
    TResult? Function(UnknownError value)? unknown,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkError value)? network,
    TResult Function(ServerError value)? server,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(ValidationError value)? validation,
    TResult Function(CacheError value)? cache,
    TResult Function(UnknownError value)? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFoundError extends AppError {
  const factory NotFoundError(
      {final String? message,
      final dynamic error,
      final StackTrace? stackTrace}) = _$NotFoundErrorImpl;
  const NotFoundError._() : super._();

  @override
  String? get message;
  @override
  dynamic get error;
  @override
  StackTrace? get stackTrace;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotFoundErrorImplCopyWith<_$NotFoundErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidationErrorImplCopyWith<$Res>
    implements $AppErrorCopyWith<$Res> {
  factory _$$ValidationErrorImplCopyWith(_$ValidationErrorImpl value,
          $Res Function(_$ValidationErrorImpl) then) =
      __$$ValidationErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, dynamic error, StackTrace? stackTrace});
}

/// @nodoc
class __$$ValidationErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$ValidationErrorImpl>
    implements _$$ValidationErrorImplCopyWith<$Res> {
  __$$ValidationErrorImplCopyWithImpl(
      _$ValidationErrorImpl _value, $Res Function(_$ValidationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ValidationErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ValidationErrorImpl extends ValidationError {
  const _$ValidationErrorImpl({this.message, this.error, this.stackTrace})
      : super._();

  @override
  final String? message;
  @override
  final dynamic error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'AppError.validation(message: $message, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationErrorImplCopyWith<_$ValidationErrorImpl> get copyWith =>
      __$$ValidationErrorImplCopyWithImpl<_$ValidationErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        network,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        server,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        notFound,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        validation,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        cache,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        unknown,
  }) {
    return validation(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        network,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        server,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        unauthorized,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        notFound,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        validation,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        cache,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        unknown,
  }) {
    return validation?.call(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        network,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        server,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        unauthorized,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        notFound,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        validation,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        cache,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        unknown,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(message, error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkError value) network,
    required TResult Function(ServerError value) server,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(ValidationError value) validation,
    required TResult Function(CacheError value) cache,
    required TResult Function(UnknownError value) unknown,
  }) {
    return validation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkError value)? network,
    TResult? Function(ServerError value)? server,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(ValidationError value)? validation,
    TResult? Function(CacheError value)? cache,
    TResult? Function(UnknownError value)? unknown,
  }) {
    return validation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkError value)? network,
    TResult Function(ServerError value)? server,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(ValidationError value)? validation,
    TResult Function(CacheError value)? cache,
    TResult Function(UnknownError value)? unknown,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(this);
    }
    return orElse();
  }
}

abstract class ValidationError extends AppError {
  const factory ValidationError(
      {final String? message,
      final dynamic error,
      final StackTrace? stackTrace}) = _$ValidationErrorImpl;
  const ValidationError._() : super._();

  @override
  String? get message;
  @override
  dynamic get error;
  @override
  StackTrace? get stackTrace;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationErrorImplCopyWith<_$ValidationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheErrorImplCopyWith<$Res>
    implements $AppErrorCopyWith<$Res> {
  factory _$$CacheErrorImplCopyWith(
          _$CacheErrorImpl value, $Res Function(_$CacheErrorImpl) then) =
      __$$CacheErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, dynamic error, StackTrace? stackTrace});
}

/// @nodoc
class __$$CacheErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$CacheErrorImpl>
    implements _$$CacheErrorImplCopyWith<$Res> {
  __$$CacheErrorImplCopyWithImpl(
      _$CacheErrorImpl _value, $Res Function(_$CacheErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$CacheErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$CacheErrorImpl extends CacheError {
  const _$CacheErrorImpl({this.message, this.error, this.stackTrace})
      : super._();

  @override
  final String? message;
  @override
  final dynamic error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'AppError.cache(message: $message, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheErrorImplCopyWith<_$CacheErrorImpl> get copyWith =>
      __$$CacheErrorImplCopyWithImpl<_$CacheErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        network,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        server,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        notFound,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        validation,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        cache,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        unknown,
  }) {
    return cache(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        network,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        server,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        unauthorized,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        notFound,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        validation,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        cache,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        unknown,
  }) {
    return cache?.call(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        network,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        server,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        unauthorized,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        notFound,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        validation,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        cache,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        unknown,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(message, error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkError value) network,
    required TResult Function(ServerError value) server,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(ValidationError value) validation,
    required TResult Function(CacheError value) cache,
    required TResult Function(UnknownError value) unknown,
  }) {
    return cache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkError value)? network,
    TResult? Function(ServerError value)? server,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(ValidationError value)? validation,
    TResult? Function(CacheError value)? cache,
    TResult? Function(UnknownError value)? unknown,
  }) {
    return cache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkError value)? network,
    TResult Function(ServerError value)? server,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(ValidationError value)? validation,
    TResult Function(CacheError value)? cache,
    TResult Function(UnknownError value)? unknown,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(this);
    }
    return orElse();
  }
}

abstract class CacheError extends AppError {
  const factory CacheError(
      {final String? message,
      final dynamic error,
      final StackTrace? stackTrace}) = _$CacheErrorImpl;
  const CacheError._() : super._();

  @override
  String? get message;
  @override
  dynamic get error;
  @override
  StackTrace? get stackTrace;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheErrorImplCopyWith<_$CacheErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownErrorImplCopyWith<$Res>
    implements $AppErrorCopyWith<$Res> {
  factory _$$UnknownErrorImplCopyWith(
          _$UnknownErrorImpl value, $Res Function(_$UnknownErrorImpl) then) =
      __$$UnknownErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, dynamic error, StackTrace? stackTrace});
}

/// @nodoc
class __$$UnknownErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$UnknownErrorImpl>
    implements _$$UnknownErrorImplCopyWith<$Res> {
  __$$UnknownErrorImplCopyWithImpl(
      _$UnknownErrorImpl _value, $Res Function(_$UnknownErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$UnknownErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$UnknownErrorImpl extends UnknownError {
  const _$UnknownErrorImpl({this.message, this.error, this.stackTrace})
      : super._();

  @override
  final String? message;
  @override
  final dynamic error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'AppError.unknown(message: $message, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownErrorImplCopyWith<_$UnknownErrorImpl> get copyWith =>
      __$$UnknownErrorImplCopyWithImpl<_$UnknownErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        network,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        server,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        notFound,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        validation,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        cache,
    required TResult Function(
            String? message, dynamic error, StackTrace? stackTrace)
        unknown,
  }) {
    return unknown(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        network,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        server,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        unauthorized,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        notFound,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        validation,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        cache,
    TResult? Function(String? message, dynamic error, StackTrace? stackTrace)?
        unknown,
  }) {
    return unknown?.call(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        network,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        server,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        unauthorized,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        notFound,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        validation,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        cache,
    TResult Function(String? message, dynamic error, StackTrace? stackTrace)?
        unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message, error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkError value) network,
    required TResult Function(ServerError value) server,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(ValidationError value) validation,
    required TResult Function(CacheError value) cache,
    required TResult Function(UnknownError value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkError value)? network,
    TResult? Function(ServerError value)? server,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(ValidationError value)? validation,
    TResult? Function(CacheError value)? cache,
    TResult? Function(UnknownError value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkError value)? network,
    TResult Function(ServerError value)? server,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(ValidationError value)? validation,
    TResult Function(CacheError value)? cache,
    TResult Function(UnknownError value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownError extends AppError {
  const factory UnknownError(
      {final String? message,
      final dynamic error,
      final StackTrace? stackTrace}) = _$UnknownErrorImpl;
  const UnknownError._() : super._();

  @override
  String? get message;
  @override
  dynamic get error;
  @override
  StackTrace? get stackTrace;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownErrorImplCopyWith<_$UnknownErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
