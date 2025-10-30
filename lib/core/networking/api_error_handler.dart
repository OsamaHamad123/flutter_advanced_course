import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:doc_doc_app/core/networking/api_constants.dart';
import 'package:doc_doc_app/core/networking/api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel fromException(Object error) {
    if (error is DioException) {
      return ApiErrorModel(message: ApiErrors.timeout);
    } else if (error is SocketException) {
      return ApiErrorModel(message: ApiErrors.noInternet);
    } else if (error is HttpException) {
      return ApiErrorModel(message: ApiErrors.serverError);
    } else if (error is FormatException) {
      return ApiErrorModel(message: ApiErrors.formatError);
    } else if (error is TypeError) {
      return ApiErrorModel(message: ApiErrors.typeError);
    } else if (error is StateError) {
      return ApiErrorModel(message: ApiErrors.stateError);
    } else if (error is ArgumentError) {
      return ApiErrorModel(message: ApiErrors.argumentError);
    } else if (error is NoSuchMethodError) {
      return ApiErrorModel(message: ApiErrors.noSuchMethodError);
    } else if (error is RangeError) {
      return ApiErrorModel(message: ApiErrors.rangeError);
    } else {
      return ApiErrorModel(message: ApiErrors.unknown);
    }
  }

  // Moved/Improved handler to be part of ApiErrorHandler.
  static ApiErrorModel fromResponse(int? statusCode, dynamic errorResponse) {
    if (errorResponse is Map<String, dynamic>) {
      return ApiErrorModel(
        statusCode: statusCode,
        message: (errorResponse['message'] as String?) ?? 'An error occurred',
        errorResponseData: errorResponse['data'] as Map<String, dynamic>?,
      );
    }

    // Fallback for non-map responses (string, null, etc.)
    return ApiErrorModel(
      statusCode: statusCode,
      message: errorResponse?.toString() ?? 'An error occurred',
    );
  }
}

class ErrorHandler {
  // Data fields so ErrorHandler can be used as a value type in states.
  final String message;
  final String code;
  final bool isRecoverable;
  final Object? exception;

  const ErrorHandler({
    required this.message,
    this.code = 'UNKNOWN',
    this.isRecoverable = false,
    this.exception,
  });

  /// Keep the existing helper for getting a plain message string.
  static String getErrorMessage(Object error) {
    if (error is TimeoutException) {
      return ApiErrors.timeout;
    } else if (error is SocketException) {
      return ApiErrors.noInternet;
    } else if (error is HttpException) {
      return ApiErrors.serverError;
    } else if (error is FormatException) {
      return ApiErrors.formatError;
    } else if (error is TypeError) {
      return ApiErrors.typeError;
    } else if (error is StateError) {
      return ApiErrors.stateError;
    } else if (error is ArgumentError) {
      return ApiErrors.argumentError;
    } else if (error is NoSuchMethodError) {
      return ApiErrors.noSuchMethodError;
    } else if (error is RangeError) {
      return ApiErrors.rangeError;
    } else {
      return ApiErrors.unknown;
    }
  }

  /// Return a structured ErrorHandler instance from an exception. This is
  /// intended so you can call:
  ///
  /// emit(HomeState.specializationsDataError(ErrorHandler.specializedError(error)))
  static ErrorHandler specializedError(Object error) {
    if (error is TimeoutException) {
      return ErrorHandler(
        code: 'TIMEOUT',
        message: ApiErrors.timeout,
        isRecoverable: true,
        exception: error,
      );
    } else if (error is SocketException) {
      return ErrorHandler(
        code: 'NO_INTERNET',
        message: ApiErrors.noInternet,
        isRecoverable: true,
        exception: error,
      );
    } else if (error is HttpException) {
      return ErrorHandler(
        code: 'SERVER_ERROR',
        message: ApiErrors.serverError,
        isRecoverable: false,
        exception: error,
      );
    } else if (error is FormatException) {
      return ErrorHandler(
        code: 'FORMAT_ERROR',
        message: ApiErrors.formatError,
        isRecoverable: false,
        exception: error,
      );
    } else if (error is TypeError) {
      return ErrorHandler(
        code: 'TYPE_ERROR',
        message: ApiErrors.typeError,
        isRecoverable: false,
        exception: error,
      );
    } else if (error is StateError) {
      return ErrorHandler(
        code: 'STATE_ERROR',
        message: ApiErrors.stateError,
        isRecoverable: false,
        exception: error,
      );
    } else if (error is ArgumentError) {
      return ErrorHandler(
        code: 'ARGUMENT_ERROR',
        message: ApiErrors.argumentError,
        isRecoverable: false,
        exception: error,
      );
    } else if (error is NoSuchMethodError) {
      return ErrorHandler(
        code: 'NO_SUCH_METHOD',
        message: ApiErrors.noSuchMethodError,
        isRecoverable: false,
        exception: error,
      );
    } else if (error is RangeError) {
      return ErrorHandler(
        code: 'RANGE_ERROR',
        message: ApiErrors.rangeError,
        isRecoverable: false,
        exception: error,
      );
    } else {
      return ErrorHandler(
        code: 'UNKNOWN',
        message: ApiErrors.unknown,
        isRecoverable: false,
        exception: error,
      );
    }
  }
}
