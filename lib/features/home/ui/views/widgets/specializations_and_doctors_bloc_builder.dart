import 'package:doc_doc_app/core/helpers/spacing.dart';
import 'package:doc_doc_app/features/home/data/models/specialitization_response_model.dart';
import 'package:doc_doc_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_doc_app/features/home/logic/cubit/home_state.dart';
import 'package:doc_doc_app/features/home/ui/views/widgets/doctor_speciality_list_view.dart';
import 'package:doc_doc_app/features/home/ui/views/widgets/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsDataLoading ||
          current is SpecializationsDataSuccess ||
          current is SpecializationsDataError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsDataLoading: () => setupLoading(),
          specializationsDataSuccess: (specializationResponseModel) {
            final specializationsList =
                specializationResponseModel.specializationsDataList;

            return setupSuccess(specializationsList);
          },

          specializationsDataError: (error) => setupError(error.message),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget setupSuccess(List<SpecializationData>? specializationsList) {
    return Expanded(
      child: Column(
        children: [
          DoctorSpecialityListView(
            specializationsDataList: specializationsList ?? [],
          ),
          verticalSpace(8),
          DoctorsListView(doctorsList: specializationsList?[0].doctorsList),
        ],
      ),
    );
  }

  Widget setupError(String errorMessage) {
    return Center(child: Text('Error: $errorMessage'));
  }
}
