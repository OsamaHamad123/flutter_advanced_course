import 'package:doc_doc_app/core/networking/api_error_handler.dart';
import 'package:doc_doc_app/core/networking/api_error_model.dart';
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
    final List<SpecializationData?>? specializationsDataList,
  ) = SpecializationsDataSuccess;
  const factory HomeState.specializationsDataError(
    ApiErrorModel apiErrorModel,
  ) = SpecializationsDataError;

  //Doctors
  const factory HomeState.doctorsDataSuccess(
    final List<Doctors?>? doctorsDataList,
  ) = DoctorsDataSuccess;
  const factory HomeState.doctorsDataError(ApiErrorModel apiErrorModel) =
      DoctorsDataError;
}
