import 'package:json_annotation/json_annotation.dart';

part 'signup_response_model.g.dart';

@JsonSerializable()
class SignupResponseModel {
  String? message;
  @JsonKey(name: 'data')
  UserDate? userDate;
  bool? status;
  int? code;
  SignupResponseModel({this.message, this.userDate, this.status, this.code});
  factory SignupResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseModelFromJson(json);
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
