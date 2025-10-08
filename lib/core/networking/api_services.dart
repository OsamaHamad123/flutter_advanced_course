// lib/core/networking/api_services.dart
import 'package:dio/dio.dart';
import 'package:doc_doc_app/core/networking/api_constants.dart';
import 'package:doc_doc_app/features/login/data/models/login_request_body_model.dart';
import 'package:doc_doc_app/features/login/data/models/login_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

// مؤقتًا خليه ثابت عشان نتأكد من التوليد
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String? baseUrl}) = _ApiServices;

  @POST(ApiConstants.loginEndpoint)
  Future<LoginResponseModel> login(@Body() LoginRequestBodyModel body);
}
