import 'package:doc_doc_app/core/helpers/extentions.dart';
import 'package:doc_doc_app/core/networking/api_error_handler.dart';
import 'package:doc_doc_app/core/networking/api_constants.dart';
import 'package:doc_doc_app/core/networking/api_error_model.dart';
import 'package:doc_doc_app/core/networking/api_result.dart';
import 'package:doc_doc_app/features/home/data/models/specialitization_response_model.dart';
import 'package:doc_doc_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(HomeState.initial());

  List<SpecializationData?>? specializationsDataList = [];

  void getSpecialization() async {
    emit(HomeState.specializationsDataLoading());
    final result = await _homeRepo.getSpecialization();
    result.when(
      success: (specializationResponseModel) {
        specializationsDataList =
            specializationResponseModel.specializationsDataList ?? [];

        getDoctorList(specializationId: specializationsDataList?.first?.id);
        emit(HomeState.specializationsDataSuccess(specializationsDataList));
      },
      failure: (error) {
        final message = error.message;
        final statusMsg = ApiErrors.fromStatusCode(error.statusCode);
        emit(
          HomeState.specializationsDataError(
            ApiErrorModel(
              message: message == null || message.isEmpty ? statusMsg : message,
              statusCode: error.statusCode,
              errorResponseData: error.errorResponseData,
            ),
          ),
        );
      },
    );
  }

  void getDoctorList({required int? specializationId}) async {
    List<Doctors?>? doctorList = getDoctorsBySpecializationId(specializationId);
    if (!doctorList.isNullOrEmpty) {
      emit(HomeState.doctorsDataSuccess(doctorList));
    } else {
      emit(
        HomeState.doctorsDataError(
          ApiErrorModel(message: 'No doctors found for this specialization.'),
        ),
      );
    }
  }

  ///returns list of doctors filtered by specialization id
  List<Doctors?>? getDoctorsBySpecializationId(int? specializationId) {
    if (specializationsDataList == null) return null;

    for (final specialization in specializationsDataList!) {
      if (specialization?.id == specializationId) {
        return specialization?.doctorsList;
      }
    }

    return null;
  }
}
