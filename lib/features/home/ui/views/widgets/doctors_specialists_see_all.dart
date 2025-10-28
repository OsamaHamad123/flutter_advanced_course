import 'package:doc_doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class DoctorsSpecialistsSeeAll extends StatelessWidget {
  const DoctorsSpecialistsSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Doctor Speciality', style: AppTextStyle.font18DarkBlueSemiBold),
        Spacer(),
        Text('See All', style: AppTextStyle.font12bluekRegular),
      ],
    );
  }
}
