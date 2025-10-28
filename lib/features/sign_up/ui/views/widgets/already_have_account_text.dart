import 'package:doc_doc_app/core/helpers/extentions.dart';
import 'package:doc_doc_app/core/routing/routers.dart';
import 'package:doc_doc_app/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account? ',
            style: AppTextStyle.font13DarkBlueRegular,
          ),
          TextSpan(
            text: 'Sign In',
            style: AppTextStyle.font13bluesemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushNamed(Routes.login);
              },
          ),
        ],
      ),
    );
  }
}
