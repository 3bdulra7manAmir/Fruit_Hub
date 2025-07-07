import 'package:flutter/material.dart';

import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/custom_textform_field.dart';

class RegisterEmailWidget extends StatelessWidget
{
  const RegisterEmailWidget({super.key});

  static final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      validator: (value) => AppValidation.emailValidation(value, context),
      hintText: "البريد الإلكتروني",
    );
  }
}