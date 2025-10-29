import 'package:dio/dio.dart';
import 'package:doc_doc_app/core/helpers/constance.dart';
import 'package:doc_doc_app/core/helpers/sheard_pref_helper.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();
  static Dio? dio;
  static getDio() {
    Duration timeout = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!.options.connectTimeout = timeout;
      dio!.options.receiveTimeout = timeout;

      addDioHeaders();
      addDioInterceptors();
      return dio!;
    }
    return dio!;
  }

  static void addDioHeaders() async {
    // Keep only synchronous default headers here. The Authorization header is
    // added per-request by an async interceptor to avoid race conditions when
    // reading secure storage.
    dio!.options.headers = {'Accept': 'application/json'};
  }

  static void setTokenInToHeaderAfterLogin(String token) {
    dio!.options.headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
  }

  static void _addAuthInterceptor() {
    // This interceptor runs before the request is sent and injects the
    // Authorization header by reading secure storage asynchronously.
    dio!.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          try {
            final token = await SharedPrefHelper.getSecureData(
              SharedPrefKeys.userTokenKey,
            );
            if (token != null && token.isNotEmpty) {
              options.headers['Authorization'] = 'Bearer $token';
            } else {
              // Ensure header is absent when no token
              options.headers.remove('Authorization');
            }
          } catch (_) {
            // ignore errors reading secure storage and continue request
          }
          return handler.next(options);
        },
      ),
    );
  }

  static void addDioInterceptors() {
    // Add the auth interceptor first so subsequent loggers/interceptors see
    // the header when printing the request.
    _addAuthInterceptor();
    dio!.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );
  }
}
