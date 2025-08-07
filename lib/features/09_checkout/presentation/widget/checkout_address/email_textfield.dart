import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/textform_field.dart';

class CheckOutEmailWidget extends StatelessWidget
{
  const CheckOutEmailWidget({super.key, required this.emailController});

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      validator: (value) => AppValidation.emailValidation(value),
      hintText: S.current.email,
    );
  }
}