import 'package:doc_doc_app/core/helpers/spacing.dart';
import 'package:doc_doc_app/core/theming/styles.dart';
import 'package:doc_doc_app/core/widgets/app_text_button.dart';
import 'package:doc_doc_app/features/login/data/models/login_request_body_model.dart';
import 'package:doc_doc_app/features/login/logic/cubit/login_cubit.dart'
    show LoginCubit;
import 'package:doc_doc_app/features/login/ui/view/widgets/dont_have_an_account_text.dart';
import 'package:doc_doc_app/features/login/ui/view/widgets/email_and_password.dart';
import 'package:doc_doc_app/features/login/ui/view/widgets/login_bloc_lisiner.dart';
import 'package:doc_doc_app/features/login/ui/view/widgets/term_and_condition_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                Text('Welcome Back', style: AppTextStyle.font24blueBold),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: AppTextStyle.font14blueRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot Password?',
                        style: AppTextStyle.font13blueRegular,
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: 'Login',
                      textStyle: AppTextStyle.font16WhiteSemiBold,
                      onPressed: () {
                        ValidateThenDoLogin(context);
                      },
                    ),
                    verticalSpace(16),
                    const TermAndConditionText(),
                    verticalSpace(60),
                    const DontHaveAnAcounttext(),
                    const LoginBlocLisiner(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void ValidateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
    // if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    //   context.read<LoginCubit>().emitLoginStates(
    //     LoginRequestBodyModel(
    //       email: context.read<LoginCubit>().emailController.text,
    //       password: context.read<LoginCubit>().passwordController.text,
    //     ),
    //   );
    // }
  }
}
