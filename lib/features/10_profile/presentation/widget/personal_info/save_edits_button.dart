import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/buttons/button.dart';
import 'confirm_password_field.dart';
import 'current_password_field.dart';
import 'edit_email.dart';
import 'edit_full_name.dart';
import 'new_password_field.dart';

class SaveEditsButtonWidget extends StatelessWidget
{
  const SaveEditsButtonWidget({super.key, required this.formKey,});

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(onPressed: ()
    {
      if (!formKey.currentState!.validate())
      {
        log('InValid...');
      }
      else
      {
        log('Valid...');
        log(
          '''
            ${EditFullNameFieldWidget.fullNameController.text}\n
            ${EditEmailFieldWidget.emailController.text}\n
            ${CurrentPasswordFieldWidget.currentPasswordController.text}\n
            ${NewPasswordFieldWidget.newPasswordController.text}\n
            ${ConfirmPasswordFieldWidget.confirmPasswordController.text}\n
          ''');
        EditFullNameFieldWidget.fullNameController.clear();
        EditEmailFieldWidget.emailController.clear();
        CurrentPasswordFieldWidget.currentPasswordController.clear();
        NewPasswordFieldWidget.newPasswordController.clear();
        ConfirmPasswordFieldWidget.confirmPasswordController.clear();
      }
    }, 
    text: 'حفظ التغييرات',);
  }
}
