import 'package:doc_doc_app/core/helpers/spacing.dart';
import 'package:doc_doc_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_doc_app/features/home/ui/views/widgets/doctors_blue_container.dart';
import 'package:doc_doc_app/features/home/ui/views/widgets/doctors_specialists_see_all.dart';
import 'package:doc_doc_app/features/home/ui/views/widgets/home_top_bar.dart';
import 'package:doc_doc_app/features/home/ui/views/widgets/specializations_and_doctors_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Trigger loading of specializations after the screen is created. This
    // ensures login has completed and token has been saved before making the
    // authorized API call.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      try {
        context.read<HomeCubit>().getSpecialization();
      } catch (_) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(24),
              const DoctorsSpecialistsSeeAll(),
              verticalSpace(18),

              const SpecializationsAndDoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
