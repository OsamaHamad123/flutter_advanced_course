import 'package:doc_doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        // Replace with your logo image
        SvgPicture.asset('assets/svgs/docdoc_logo.svg', height: 50, width: 50),
        SizedBox(width: 10.w),
        Text('Doc App', style: AppTextStyle.font24blackBold),
      ],
    );
  }
}
