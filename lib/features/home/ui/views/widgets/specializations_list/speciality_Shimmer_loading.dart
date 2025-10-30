import 'package:doc_doc_app/core/helpers/spacing.dart';
import 'package:doc_doc_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SpecialityShimmerLoading extends StatelessWidget {
  const SpecialityShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
            child: Column(
              children: [
                Shimmer.fromColors(
                  baseColor: ColorsManegar.lightGrey,
                  highlightColor: Colors.white,
                  child: CircleAvatar(
                    radius: 28.r,
                    backgroundColor: Colors.white,
                  ),
                ),
                verticalSpace(14),
                Shimmer.fromColors(
                  baseColor: ColorsManegar.lightGrey,
                  highlightColor: Colors.white,
                  child: Container(
                    width: 50.w,
                    height: 14.h,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
