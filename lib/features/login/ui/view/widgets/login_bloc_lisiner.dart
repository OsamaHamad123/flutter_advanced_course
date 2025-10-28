import 'package:doc_doc_app/core/helpers/extentions.dart';
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
        return current is Loading || current is Success || current is Failure;
      },
      listener: (context, state) {
        state.whenOrNull(
          success: (data) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          loading: () {
            showDialog(
              context: context,
              builder: (context) {
                return const Center(
                  child: CircularProgressIndicator(color: Colors.blue),
                );
              },
            );
          },
          failure: (error) {
            context.pop();
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(Icons.error, color: Colors.red, size: 32),
        content: Text(error, style: FontStyles.font15DarkBlueMedium),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: Text('Go it', style: FontStyles.font14BlueSemiBold),
          ),
        ],
      ),
    );
  }
}
