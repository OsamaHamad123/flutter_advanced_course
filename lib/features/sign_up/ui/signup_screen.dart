import 'package:doc_doc_app/core/helpers/spacing.dart';
import 'package:doc_doc_app/core/theming/styles.dart';
import 'package:doc_doc_app/core/widgets/app_text_button.dart';
import 'package:doc_doc_app/features/login/ui/view/widgets/term_and_condition_text.dart';
import 'package:doc_doc_app/features/sign_up/logic/cubit/signup_cubit.dart';
import 'package:doc_doc_app/features/sign_up/ui/views/widgets/already_have_account_text.dart';
import 'package:doc_doc_app/features/sign_up/ui/views/widgets/signup_bloc_listener.dart';
import 'package:doc_doc_app/features/sign_up/ui/views/widgets/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text('Create Account', style: FontStyles.font24blueBold),
                verticalSpace(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: FontStyles.font14blueRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const SignupForm(),

                    AppTextButton(
                      buttonText: 'Create Account',
                      textStyle: FontStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    verticalSpace(16),
                    const TermAndConditionText(),
                    verticalSpace(30),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
