import 'package:doc_doc_app/core/networking/api_error_handler.dart';
import 'package:doc_doc_app/core/networking/api_constants.dart';
import 'package:doc_doc_app/core/networking/api_result.dart';
import 'package:doc_doc_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(HomeState.initial());

  void getSpecialization() async {
    emit(HomeState.specializationsDataLoading());
    final result = await _homeRepo.getSpecialization();
    result.when(
      success: (specializationResponseModel) {
        // Debug: print number of specializations received so we can trace UI issues.
        try {
          final count =
              specializationResponseModel.specializationsDataList?.length ?? 0;
          // ignore: avoid_print
          print('HomeCubit: received specializations count = $count');
        } catch (_) {}
        emit(HomeState.specializationsDataSuccess(specializationResponseModel));
      },
      failure: (error) {
        // `error` is an ApiErrorModel (from the repository). Use its
        // message/statusCode so the UI shows the server-provided message.
        final message = error.message;
        final statusMsg = ApiErrors.fromStatusCode(error.statusCode);
        emit(
          HomeState.specializationsDataError(
            ErrorHandler(
              message: message == null || message.isEmpty ? statusMsg : message,
              code: 'API_ERROR',
              isRecoverable: false,
              exception: error,
            ),
          ),
        );
      },
    );
  }
}
