import 'package:doc_doc_app/core/helpers/extentions.dart';
import 'package:doc_doc_app/core/routing/routers.dart';
import 'package:doc_doc_app/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAnAcounttext extends StatelessWidget {
  const DontHaveAnAcounttext({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account? ',
            style: FontStyles.font13DarkBlueRegular,
          ),

          TextSpan(
            text: 'Sign Up',
            style: FontStyles.font13bluesemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushNamed(Routes.signUp);
              },
          ),
        ],
      ),
    );
  }
}
