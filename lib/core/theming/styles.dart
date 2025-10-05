import 'package:doc_doc_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FontStyles {
  static final TextStyle font24blackBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManegar.black,
  );

  static final TextStyle font32bluekBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManegar.mainBlue,
  );
  static final TextStyle font13greyRegular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManegar.grey,
  );
  static final TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManegar.white,
  );
}
