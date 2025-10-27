import 'package:doc_doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class TermAndConditionText extends StatelessWidget {
  const TermAndConditionText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By signing up, you agree to our ',
            style: FontStyles.font13greyRegular,
          ),
          TextSpan(
            text: 'Terms & Conditions',
            style: FontStyles.font13DarkBlueMedium,
          ),
          TextSpan(
            text: ' and ',
            style: FontStyles.font13greyRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: FontStyles.font13DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}
