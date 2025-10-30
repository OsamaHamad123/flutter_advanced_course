import 'package:doc_doc_app/core/helpers/extentions.dart';
import 'package:doc_doc_app/core/networking/api_error_model.dart';
import 'package:doc_doc_app/core/routing/routers.dart';
import 'package:doc_doc_app/core/theming/styles.dart';
import 'package:doc_doc_app/features/sign_up/logic/cubit/signup_cubit.dart';
import 'package:doc_doc_app/features/sign_up/logic/cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) {
        // Ensure we listen for signup loading, success and error states.
        // Previous code checked `current is Error` (dart:core Error) which is
        // incorrect and prevented showing API error dialogs.
        return current is SignupLoading ||
            current is SignupSuccess ||
            current is SignupError;
      },
      listener: (context, state) {
        state.whenOrNull(
          signupSuccess: (data) {
            context.pop();
            context.pushNamed(Routes.login);
          },
          signupLoading: () {
            showDialog(
              context: context,
              builder: (context) {
                return const Center(
                  child: CircularProgressIndicator(color: Colors.blue),
                );
              },
            );
          },
          signupError: (error) {
            context.pop();
            setupErrorState(
              context,
              error ?? ApiErrorModel(message: 'An unexpected error occurred.'),
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, ApiErrorModel error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(Icons.error, color: Colors.red, size: 32),
        content: Text(
          error.getAllErrorMessages(),
          style: AppTextStyle.font15DarkBlueMedium,
        ),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: Text('Close', style: AppTextStyle.font14BlueSemiBold),
          ),
        ],
      ),
    );
  }
}
