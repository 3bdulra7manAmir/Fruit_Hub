import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/buttons/button.dart';
import 'email_field.dart';
import 'fullname_field.dart';
import 'password_field.dart';

class RegisterButtonWidget extends StatelessWidget
{
  const RegisterButtonWidget({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      text: "إنشاء حساب جديد",
      onPressed: ()
      {
        if (!formKey.currentState!.validate())
        {
          log("Valid Register...");
          final fullname = RegisterFullNameWidget.fullNameController.text;
          final email = RegisterEmailWidget.emailController.text;
          final password = RegisterPasswordWidget.passwordController.text;
          log("$fullname \t $email \t $password");
          //AppRouter.router.pushNamed(AppRoutes.login);
        }
        else
        {
          log("InValid Register...");
        }
      },
    );
  }
}