import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_error.freezed.dart';

/// Represents all possible errors in the application
@freezed
class AppError with _$AppError {
  const AppError._();

  const factory AppError.network({
    String? message,
    dynamic error,
    StackTrace? stackTrace,
  }) = NetworkError;

  const factory AppError.server({
    String? message,
    dynamic error,
    StackTrace? stackTrace,
  }) = ServerError;

  const factory AppError.unauthorized({
    String? message,
    dynamic error,
    StackTrace? stackTrace,
  }) = UnauthorizedError;

  const factory AppError.notFound({
    String? message,
    dynamic error,
    StackTrace? stackTrace,
  }) = NotFoundError;

  const factory AppError.validation({
    String? message,
    dynamic error,
    StackTrace? stackTrace,
  }) = ValidationError;

  const factory AppError.cache({
    String? message,
    dynamic error,
    StackTrace? stackTrace,
  }) = CacheError;

  const factory AppError.unknown({
    String? message,
    dynamic error,
    StackTrace? stackTrace,
  }) = UnknownError;

  /// Helper method to get user-friendly error message
  String get userMessage {
    return when(
      network: (message, _, __) =>
          message ?? 'Network error. Please check your connection.',
      server: (message, _, __) =>
          message ?? 'Server error. Please try again later.',
      unauthorized: (message, _, __) =>
          message ?? 'Unauthorized. Please login again.',
      notFound: (message, _, __) =>
          message ?? 'Resource not found.',
      validation: (message, _, __) =>
          message ?? 'Invalid input. Please check your data.',
      cache: (message, _, __) =>
          message ?? 'Cache error. Please try again.',
      unknown: (message, _, __) =>
          message ?? 'An unexpected error occurred.',
    );
  }
}