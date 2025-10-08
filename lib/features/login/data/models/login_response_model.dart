import 'package:json_annotation/json_annotation.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  String? message;
  @JsonKey(name: 'data')
  UserDate? userDate;
  bool? status;
  int? code;
  LoginResponseModel({this.message, this.userDate, this.status, this.code});
  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@JsonSerializable()
class UserDate {
  String? token;
  @JsonKey(name: 'username')
  String? userName;

  UserDate({this.token, this.userName});
  factory UserDate.fromJson(Map<String, dynamic> json) =>
      _$UserDateFromJson(json);
}
