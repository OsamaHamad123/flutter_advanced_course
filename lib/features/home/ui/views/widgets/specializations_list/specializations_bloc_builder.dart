import 'package:doc_doc_app/core/helpers/spacing.dart';
import 'package:doc_doc_app/features/home/data/models/specialitization_response_model.dart';
import 'package:doc_doc_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_doc_app/features/home/logic/cubit/home_state.dart';
// doctor shimmer and doctors list are rendered by DoctorsBlocBuilder.
import 'package:doc_doc_app/features/home/ui/views/widgets/specializations_list/speciality_Shimmer_loading.dart';
import 'package:doc_doc_app/features/home/ui/views/widgets/specializations_list/speciality_list_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

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
          specializationsDataSuccess: (specializationDataList) {
            final specializationsList = specializationDataList;

            return setupSuccess(specializationsList);
          },

          specializationsDataError: (error) => setupError(error.message),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return Column(
      children: [const SpecialityShimmerLoading(), verticalSpace(8)],
    );
  }

  Widget setupSuccess(List<SpecializationData?>? specializationsList) {
    return SpecialityListView(
      specializationsDataList: specializationsList ?? [],
    );
  }

  Widget setupError(String errorMessage) {
    return Center(child: Text('Error: $errorMessage'));
  }
}
