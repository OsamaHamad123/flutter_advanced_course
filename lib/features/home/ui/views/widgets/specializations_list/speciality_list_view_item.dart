import 'package:doc_doc_app/core/theming/colors.dart';
import 'package:doc_doc_app/core/theming/styles.dart';
import 'package:doc_doc_app/features/home/data/models/specialitization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SpecialityListViewItem extends StatelessWidget {
  final SpecializationData? specializationData;
  final int? itemIndex;
  final int selectedIndex;

  const SpecialityListViewItem({
    super.key,
    required this.specializationData,
    this.itemIndex,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 14.w),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorsManegar.grey, width: 1.5.w),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 28.r,
                    backgroundColor: ColorsManegar.colorSoftBlue,
                    child: SvgPicture.asset(
                      'assets/svgs/general_speciality.svg',
                      width: 35.w,
                      height: 35.h,
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 28.r,
                  backgroundColor: ColorsManegar.colorSoftBlue,
                  child: SvgPicture.asset(
                    'assets/svgs/general_speciality.svg',
                    width: 30.w,
                    height: 30.h,
                  ),
                ),
          SizedBox(height: 8.h),
          Text(
            specializationData?.name ?? 'Speciality',
            style: itemIndex == selectedIndex
                ? AppTextStyle.font12DarkBlueBold
                : AppTextStyle.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
