import 'package:doc_doc_app/core/theming/colors.dart';
import 'package:doc_doc_app/core/theming/styles.dart';
import 'package:doc_doc_app/features/home/data/models/specialitization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  final SpecializationData? specializationData;
  final int? itemIndex;

  const DoctorSpecialityListViewItem({
    super.key,
    required this.specializationData,
    this.itemIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 14.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28.r,
            backgroundColor: ColorsManegar.colorSoftBlue,
            child: SvgPicture.asset(
              'assets/svgs/general_speciality.svg',
              width: 35.w,
              height: 35.h,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            specializationData?.name ?? 'Speciality',
            style: AppTextStyle.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
