import 'package:doc_doc_app/core/helpers/spacing.dart';
import 'package:doc_doc_app/core/theming/colors.dart';
import 'package:doc_doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialCharacter;
  final bool hasMinLength;
  final bool? hasMatch; // ← اختياري لو حاب تعرض "Match Password"

  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasNumber,
    required this.hasSpecialCharacter,
    required this.hasMinLength,
    this.hasMatch,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password must contain:',
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        verticalSpace(8),
        _buildValidationRow('At least one lowercase letter', hasLowerCase),
        verticalSpace(2),
        _buildValidationRow('At least one uppercase letter', hasUpperCase),
        verticalSpace(2),
        _buildValidationRow('At least one number', hasNumber),
        verticalSpace(2),
        _buildValidationRow(
          'At least one special character',
          hasSpecialCharacter,
        ),
        verticalSpace(2),
        _buildValidationRow('Minimum 8 characters', hasMinLength),
        verticalSpace(2),
        if (hasMatch != null) _buildValidationRow('Passwords match', hasMatch!),
      ],
    );
  }

  Widget _buildValidationRow(String text, bool ok) {
    return Row(
      children: [
        Icon(
          ok ? Icons.check_circle : Icons.radio_button_unchecked,
          size: 16,
          color: ok ? Colors.green : ColorsManegar.grey,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: AppTextStyle.font13DarkBlueRegular.copyWith(
            decoration: ok ? TextDecoration.lineThrough : TextDecoration.none,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: ok ? ColorsManegar.grey : ColorsManegar.darkBlue,
          ),
        ),
      ],
    );
  }
}
