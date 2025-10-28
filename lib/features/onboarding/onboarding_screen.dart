import 'package:doc_doc_app/core/theming/styles.dart';
import 'package:doc_doc_app/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:doc_doc_app/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:doc_doc_app/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const DocLogoAndName(),
                  SizedBox(height: 30.h),
                  const DoctorImageAndText(),
                  SizedBox(height: 12.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Column(
                      children: [
                        Text(
                          'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                          textAlign: TextAlign.center,
                          style: AppTextStyle.font13greyRegular,
                        ),
                        SizedBox(height: 30.h),
                        const GetStartedButton(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
