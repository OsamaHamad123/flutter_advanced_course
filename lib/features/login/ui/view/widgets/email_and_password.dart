import 'package:doc_doc_app/core/helpers/app_regex.dart' show AppRegex;
import 'package:doc_doc_app/core/helpers/spacing.dart';
import 'package:doc_doc_app/core/widgets/app_text_form_field.dart'
    show AppTextFormField;
import 'package:doc_doc_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_doc_app/features/login/ui/view/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialCharacter = false;
  bool hasMinLength = false;

  late TextEditingController PasswordController;

  @override
  void initState() {
    PasswordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
    super.initState();
  }

  @override
  void dispose() {
    PasswordController.dispose();
    super.dispose();
  }

  void setupPasswordControllerListener() {
    PasswordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(PasswordController.text);
        hasUpperCase = AppRegex.hasUpperCase(PasswordController.text);
        hasNumber = AppRegex.hasNumber(PasswordController.text);
        hasSpecialCharacter = AppRegex.hasSpecialCharacter(
          PasswordController.text,
        );
        hasMinLength = AppRegex.hasMinLength(PasswordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Email Address',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter your email';
              }
              // You can add more complex email validation if needed
              return null;
            },
            controller: context.read<LoginCubit>().emailController,
          ),
          verticalSpace(18),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            hintText: 'Password',
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: Colors.grey,
              ),
            ),

            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              // You can add more complex password validation if needed
              return null;
            },
          ),
          verticalSpace(24),
          PasswordValidations(
            hasLowerCase: hasLowerCase, // These should be dynamic
            hasUpperCase: hasUpperCase, // These should be dynamic
            hasNumber: hasNumber, // These should be dynamic
            hasSpecialCharacter: hasSpecialCharacter, // These should be dynamic
            hasMinLength: hasMinLength, // These should be dynamic
          ),
        ],
      ),
    );
  }
}
