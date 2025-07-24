// ignore_for_file: unused_import

import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/widgets/buttons/button.dart';
import '../../../../../core/widgets/snackbar.dart';
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
      text: 'إنشاء كلمة مرور جديدة',
      onPressed: ()
      {
        if (!formKey.currentState!.validate())
        {
          log('InValid Creation...');
        }
        else
        {
          final password1 = FirstPasswordFieldWidget.passwordController.text;
          final password2 = SecondPasswordFieldWidget.passwordController.text;
          if(password1 == password2)
          {
            log('Create Password Has been Pressed...');
            log('$password1 \t $password2');
            showSuccessDialog(context);
            AppRouter.router.pushReplacementNamed(AppRoutes.login);
          }
          else
          {
            FirstPasswordFieldWidget.passwordController.clear();
            SecondPasswordFieldWidget.passwordController.clear();
            CustomSnackBar.show(context, 'كلمتا السر غير متطبقتان يا معلم\n حاول تدخل 2 متطابقين كده بتكلم بجد...');
          }
        }
      },  
    );
  }
}

