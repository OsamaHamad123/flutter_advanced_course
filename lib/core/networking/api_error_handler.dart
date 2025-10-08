import 'dart:async';
import 'dart:io';
import 'package:doc_doc_app/core/networking/api_constants.dart';
import 'package:doc_doc_app/core/networking/api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel fromException(Object error) {
    if (error is TimeoutException) {
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
}

class ErrorHandler {
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
}
