import 'package:doc_doc_app/core/networking/api_error_handler.dart';
import 'package:doc_doc_app/core/networking/api_result.dart';
import 'package:doc_doc_app/core/networking/api_services.dart';
import 'package:doc_doc_app/features/sign_up/data/models/signup_request_body_model.dart';
import 'package:doc_doc_app/features/sign_up/data/models/signup_response_model.dart';

class SignUpRepo {
  final ApiServices apiServices;
  SignUpRepo(this.apiServices);

  Future<ApiResult<SignupResponseModel>> signUp(
    SignupRequestBodyModel signupRequestBodyModel,
  ) async {
    try {
      final response = await apiServices.register(signupRequestBodyModel);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.fromException(e));
    }
  }
}
