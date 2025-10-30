import 'package:doc_doc_app/core/helpers/spacing.dart';
import 'package:doc_doc_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DoctorShimmerLoading extends StatelessWidget {
  const DoctorShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: Row(
            children: [
              Shimmer.fromColors(
                baseColor: ColorsManegar.lightGrey,
                highlightColor: Colors.white,
                child: Container(
                  width: 110.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                    shape: BoxShape.rectangle,
                  ),
                ),
              ),
              horizontalSpace(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Shimmer.fromColors(
                      baseColor: ColorsManegar.lightGrey,
                      highlightColor: Colors.white,
                      child: Container(
                        width: 150.w,
                        height: 16.h,
                        color: Colors.white,
                      ),
                    ),
                    verticalSpace(8),
                    Shimmer.fromColors(
                      baseColor: ColorsManegar.lightGrey,
                      highlightColor: Colors.white,
                      child: Container(
                        width: 100.w,
                        height: 14.h,
                        color: Colors.white,
                      ),
                    ),
                    verticalSpace(8),
                    Shimmer.fromColors(
                      baseColor: ColorsManegar.lightGrey,
                      highlightColor: Colors.white,
                      child: Container(
                        width: 120.w,
                        height: 14.h,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
