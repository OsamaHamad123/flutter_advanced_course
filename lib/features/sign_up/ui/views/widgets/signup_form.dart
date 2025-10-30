// features/sign_up/presentation/widgets/signup_form.dart
import 'package:doc_doc_app/core/helpers/app_regex.dart';
import 'package:doc_doc_app/core/helpers/extentions.dart';
import 'package:doc_doc_app/core/helpers/spacing.dart';
import 'package:doc_doc_app/core/routing/routers.dart';
import 'package:doc_doc_app/core/theming/styles.dart';
import 'package:doc_doc_app/core/widgets/app_text_form_field.dart';
import 'package:doc_doc_app/features/login/ui/view/widgets/password_validations.dart';
import 'package:doc_doc_app/features/sign_up/logic/cubit/signup_cubit.dart';
import 'package:doc_doc_app/features/sign_up/logic/cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool _obscurePwd = true;
  bool _obscureConfirm = true;

  void _showErrorDialog(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(Icons.error, color: Colors.red, size: 32),
        content: Text(error, style: AppTextStyle.font15DarkBlueMedium),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: Text('Got it', style: AppTextStyle.font14BlueSemiBold),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignupCubit>(); // آمن داخل build

    return BlocListener<SignupCubit, SignupState>(
      listener: (context, state) {
        state.whenOrNull(
          signupLoading: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) => const Center(
                child: CircularProgressIndicator(color: Colors.blue),
              ),
            );
          },
          signupSuccess: (_) {
            context.pop(); // close spinner
            context.pushNamed(Routes.login);
          },
          signupError: (error) {
            context.pop(); // close spinner
            _showErrorDialog(
              context,
              error?.message ?? 'An unexpected error occurred.',
            );
          },
        );
      },
      // مهم: اربط الـ Form بالمفتاح من الكيوبت علشان ما يصير null
      child: Form(
        key: cubit.formKey,
        child: Column(
          children: [
            // Name
            AppTextFormField(
              controller: cubit.nameController,
              hintText: 'Name',
              validator: (value) {
                if (value == null || value.isEmpty) return 'Name is required';
                return AppRegex.isNameValid(value) ? null : 'Invalid name';
              },
            ),
            verticalSpace(18),

            // Email
            AppTextFormField(
              controller: cubit.emailController,
              hintText: 'Email',
              validator: (value) {
                if (value == null || value.isEmpty) return 'Email is required';
                return AppRegex.isEmailValid(value) ? null : 'Invalid email';
              },
            ),
            verticalSpace(18),

            // Phone
            AppTextFormField(
              controller: cubit.phoneController,
              hintText: 'Phone Number',
              validator: (value) {
                if (value == null || value.isEmpty) return 'Phone is required';
                return AppRegex.isPhoneNumberValid(value)
                    ? null
                    : 'Invalid phone number';
              },
            ),
            verticalSpace(18),

            // Password
            AppTextFormField(
              controller: cubit.passwordController,
              hintText: 'Password',
              isObscureText: _obscurePwd,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password is required';
                }
                return AppRegex.isPasswordValid(value)
                    ? null
                    : 'Invalid password format';
              },
              suffixIcon: IconButton(
                icon: Icon(
                  _obscurePwd ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () => setState(() => _obscurePwd = !_obscurePwd),
              ),
            ),

            verticalSpace(18),

            // Confirm Password
            AppTextFormField(
              controller: cubit.passwordConfirmation,
              hintText: 'Confirm Password',
              isObscureText: _obscureConfirm,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password is required';
                }
                return AppRegex.isPasswordValid(value)
                    ? null
                    : 'Invalid password format';
              },
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureConfirm ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () =>
                    setState(() => _obscureConfirm = !_obscureConfirm),
              ),
            ),

            verticalSpace(24),
            ValueListenableBuilder<TextEditingValue>(
              valueListenable: cubit.passwordController,
              builder: (_, p, __) {
                return ValueListenableBuilder<TextEditingValue>(
                  valueListenable: cubit.passwordConfirmation,
                  builder: (_, c, __) {
                    final pwd = p.text.trim();
                    final conf = c.text.trim();

                    // لا تُظهر سطر المطابقة إلا بعد أن يكتب المستخدم في confirm
                    final bool? matchFlag = conf.isNotEmpty
                        ? AppRegex.isPasswordMatch(pwd, conf)
                        : null;

                    return PasswordValidations(
                      hasLowerCase: AppRegex.hasLowerCase(pwd),
                      hasUpperCase: AppRegex.hasUpperCase(pwd),
                      hasNumber: AppRegex.hasNumber(pwd),
                      hasSpecialCharacter: AppRegex.hasSpecialCharacter(pwd),
                      hasMinLength: AppRegex.hasMinLength(pwd),
                      hasMatch: matchFlag ?? false,
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
