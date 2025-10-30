import 'package:cached_network_image/cached_network_image.dart';
import 'package:doc_doc_app/core/helpers/spacing.dart';
import 'package:doc_doc_app/core/theming/colors.dart';
import 'package:doc_doc_app/core/theming/styles.dart';
import 'package:doc_doc_app/features/home/data/models/specialitization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DoctorsListViewItem extends StatelessWidget {
  const DoctorsListViewItem({super.key, this.dataModel});

  final Doctors? dataModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),

      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl:
                'https://image-generator.com/assets/img/ai-generated-image-main.png',

            progressIndicatorBuilder: (context, url, progress) {
              return Shimmer.fromColors(
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
              );
            },
            imageBuilder: (context, imageProvider) {
              return Container(
                width: 110.w,
                height: 120.h,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12.r),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            errorWidget: (context, url, error) =>
                Icon(Icons.error, size: 20.r, color: ColorsManegar.red),
          ),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(12.r),
          //   child: Image.asset(
          //     'assets/images/home_view_battern.png',
          //     width: 110.w,
          //     height: 120.h,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          horizontalSpace(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dataModel?.name ?? 'Dr. John Doe',
                  style: AppTextStyle.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  '${dataModel?.degree} | ${dataModel?.phone}',
                  style: AppTextStyle.font12GreyMedium,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  'Email: ${dataModel?.email}',
                  style: AppTextStyle.font12GreyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
