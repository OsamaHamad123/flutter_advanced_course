import 'package:doc_doc_app/core/networking/api_error_handler.dart';
import 'package:doc_doc_app/core/networking/api_result.dart';
import 'package:doc_doc_app/core/networking/api_services.dart';
import 'package:doc_doc_app/features/login/data/models/login_request_body_model.dart';
import 'package:doc_doc_app/features/login/data/models/login_response_model.dart';

class LoginRepo {
  final ApiServices _apiServices;
  LoginRepo(this._apiServices);
  Future<ApiResult<LoginResponseModel>> login(
    LoginRequestBodyModel body,
  ) async {
    try {
      final response = await _apiServices.login(body);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.fromException(e));
    }
  }
}
