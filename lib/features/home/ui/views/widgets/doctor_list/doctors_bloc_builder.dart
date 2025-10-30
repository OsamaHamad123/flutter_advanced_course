import 'package:doc_doc_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_doc_app/features/home/logic/cubit/home_state.dart';
import 'package:doc_doc_app/features/home/ui/views/widgets/doctor_list/doctors_list_view.dart';
import 'package:doc_doc_app/features/home/ui/views/widgets/doctor_list/doctor_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      // React to specializations loading as well so we can show the
      // doctors shimmer while specializations are being fetched.
      buildWhen: (previous, current) =>
          current is DoctorsDataSuccess ||
          current is DoctorsDataError ||
          current is SpecializationsDataLoading,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsDataLoading: () => const DoctorShimmerLoading(),
          doctorsDataSuccess: (doctorsList) {
            return setupSuccess(doctorsList);
          },
          doctorsDataError: (error) => setupError(error.message),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  setupSuccess(doctorsList) {
    return DoctorsListView(doctorsList: doctorsList);
  }

  setupError(String errorMessage) {
    return Center(child: Text('Error: $errorMessage'));
  }
}
