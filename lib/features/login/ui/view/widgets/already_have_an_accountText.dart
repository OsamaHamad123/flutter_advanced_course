import 'package:doc_doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAcounttext extends StatelessWidget {
  const AlreadyHaveAnAcounttext({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account? ',
            style: FontStyles.font13DarkBlueRegular,
          ),
          TextSpan(text: 'Sign Up', style: FontStyles.font13bluesemiBold),
        ],
      ),
    );
  }
}
