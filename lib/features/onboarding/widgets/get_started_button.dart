import 'package:doc_doc_app/core/helpers/extentions.dart';
import 'package:doc_doc_app/core/theming/colors.dart';
<<<<<<< HEAD
import 'package:doc_doc_app/core/theming/styles.dart';
=======
>>>>>>> development
import 'package:flutter/material.dart';

import '../../../core/routing/routers.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: ColorsManegar.mainBlue,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: const Size(double.infinity, 0),
      ),

      onPressed: () {
        context.pushNamed(Routes.login);
      },
      child: Text('Get Started', style: FontStyles.font16WhiteSemiBold),
    );
  }
}
