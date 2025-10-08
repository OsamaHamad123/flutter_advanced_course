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

  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasNumber,
    required this.hasSpecialCharacter,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password must contain:',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
      ],
    );
  }

  Widget _buildValidationRow(String text, bool hasValidate) {
    return Row(
      children: [
        const CircleAvatar(radius: 2.5, backgroundColor: ColorsManegar.grey),
        horizontalSpace(6),
        Text(
          text,
          style: FontStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidate
                ? TextDecoration.lineThrough
                : TextDecoration.none,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidate ? ColorsManegar.grey : ColorsManegar.darkBlue,
          ),
        ),
      ],
    );
  }
}
