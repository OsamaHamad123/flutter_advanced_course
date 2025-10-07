// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    LoginResponseModel(
      message: json['message'] as String?,
      userDate: json['data'] == null
          ? null
          : UserDate.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.userDate,
      'status': instance.status,
      'code': instance.code,
    };

UserDate _$UserDateFromJson(Map<String, dynamic> json) => UserDate(
  token: json['token'] as String?,
  userName: json['username'] as String?,
);

Map<String, dynamic> _$UserDateToJson(UserDate instance) => <String, dynamic>{
  'token': instance.token,
  'username': instance.userName,
};
