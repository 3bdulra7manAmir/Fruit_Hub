// ignore_for_file: unused_import

import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/widgets/buttons/custom_button.dart';
import 'first_password_field.dart';
import 'password_changed_dialog.dart';
import 'second_password_field.dart';

class NewPasswordButtonWidget extends StatelessWidget
{
  const NewPasswordButtonWidget({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      text: "إنشاء كلمة مرور جديدة",
      onPressed: ()
      {
        if (!formKey.currentState!.validate())
        {
          final password1 = FirstPasswordFieldWidget.passwordController.text;
          final password2 = SecondPasswordFieldWidget.passwordController.text;
          log("Create Password Has been Pressed...");
          log("$password1 \t $password2");
          showSuccessDialog(context);
          //AppRouter.router.pushReplacementNamed(AppRoutes.login);
        }
        else
        {
          log("InValid Creation...");
        }
      },  
    );
  }
}

