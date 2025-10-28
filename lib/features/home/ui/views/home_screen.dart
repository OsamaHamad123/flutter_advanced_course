import 'package:doc_doc_app/core/helpers/spacing.dart';
import 'package:doc_doc_app/features/home/ui/views/widgets/doctor_speciality_list_view.dart';
import 'package:doc_doc_app/features/home/ui/views/widgets/doctors_blue_container.dart';
import 'package:doc_doc_app/features/home/ui/views/widgets/doctors_list_view.dart';
import 'package:doc_doc_app/features/home/ui/views/widgets/doctors_specialists_see_all.dart';
import 'package:doc_doc_app/features/home/ui/views/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              const DoctorSpecialityListView(),
              verticalSpace(8),
              const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
