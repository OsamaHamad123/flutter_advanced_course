import 'package:doc_doc_app/core/networking/api_error_handler.dart';
import 'package:doc_doc_app/features/home/data/models/specialitization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  //specializations data loading state
  const factory HomeState.specializationsDataLoading() =
      SpecializationsDataLoading;
  const factory HomeState.specializationsDataSuccess(
    SpecializationResponseModel specializationResponseModel,
  ) = SpecializationsDataSuccess;
  const factory HomeState.specializatonsDataError(ErrorHandler errorHandler) =
      SpecializationsDataError;
}
