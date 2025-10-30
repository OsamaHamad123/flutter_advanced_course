import 'package:doc_doc_app/core/helpers/extentions.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ApiErrorModel {
  final String? message;
  final int? statusCode;
  @JsonKey(name: 'data')
  final Map<String, dynamic>? errorResponseData;

  const ApiErrorModel({this.errorResponseData, this.message, this.statusCode});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  // Add helper to capitalize field names
  String _capitalize(String s) {
    if (s.isEmpty) return s;
    return s[0].toUpperCase() + s.substring(1);
  }

  // Replace getAllErrorMessages with improved formatting and robustness
  String getAllErrorMessages() {
    if (errorResponseData.isNullOrEmpty) return message ?? 'An error occurred';
    final errorMessage = errorResponseData!.entries
        .map((entry) {
          final value = entry.value;
          return "${value.join(', ')}";
        })
        .join('\n');
    return errorMessage;
  }
}
