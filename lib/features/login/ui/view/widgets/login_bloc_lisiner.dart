import 'package:doc_doc_app/core/helpers/extentions.dart';
import 'package:doc_doc_app/core/networking/api_error_model.dart';
import 'package:doc_doc_app/core/routing/routers.dart';
import 'package:doc_doc_app/core/theming/styles.dart';
import 'package:doc_doc_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_doc_app/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocLisiner extends StatelessWidget {
  const LoginBlocLisiner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) {
        return current is LoginLoading ||
            current is LoginSuccess ||
            current is LoginFailure;
      },
      listener: (context, state) {
        state.whenOrNull(
          loginSuccess: (data) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          loginLoading: () {
            showDialog(
              context: context,
              builder: (context) {
                return const Center(
                  child: CircularProgressIndicator(color: Colors.blue),
                );
              },
            );
          },
          loginFailure: (error) {
            context.pop();
            setupErrorState(context, error);
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
            child: Text('Go it', style: AppTextStyle.font14BlueSemiBold),
          ),
        ],
      ),
    );
  }
}
