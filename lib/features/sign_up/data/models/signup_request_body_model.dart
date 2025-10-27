import 'package:json_annotation/json_annotation.dart';
part 'signup_request_body_model.g.dart';

@JsonSerializable()
class SignupRequestBodyModel {
  final String name;
  final String email;
  final String phone;
  final int gender;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  SignupRequestBodyModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
    required this.password,
    required this.passwordConfirmation,
  });

  Map<String, dynamic> toJson() => _$SignupRequestBodyModelToJson(this);
}
