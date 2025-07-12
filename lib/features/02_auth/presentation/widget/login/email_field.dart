import 'package:flutter/material.dart';

import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/textform_field.dart';

class LoginEmailWidget extends StatelessWidget
{
  const LoginEmailWidget({super.key});

  static final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      hintText: "البريد الإلكتروني",
      validator: (value) => AppValidation.emailValidation(value, context),
    );
  }
}