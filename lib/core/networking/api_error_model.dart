import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ApiErrorModel {
  final String? message;
  final int? statusCode;

  const ApiErrorModel({this.message, this.statusCode});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
