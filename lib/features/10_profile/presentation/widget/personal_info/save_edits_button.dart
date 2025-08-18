import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../core/utils/logger/app_logger.dart';
import '../../../../../core/widgets/buttons/button.dart';
import '../../../../02_auth/presentation/widget/new_password/password_changed_dialog.dart';

class SaveEditsButtonWidget extends StatelessWidget
{
  SaveEditsButtonWidget({super.key, 
  required this.formKey, 
  required this.fullNameController, 
  required this.emailController, 
  required this.currentPasswordController, 
  required this.newPasswordController, 
  required this.confirmPasswordController,});

  final GlobalKey<FormState> formKey;
  final GlobalKey<FormState> personalInfoFormKey = GlobalKey<FormState>();
  final TextEditingController fullNameController;
  final TextEditingController emailController;
  final TextEditingController currentPasswordController;
  final TextEditingController newPasswordController;
  final TextEditingController confirmPasswordController;

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(onPressed: ()
    {
      if (!formKey.currentState!.validate())
      {
        AppLogger.debug('InValid...');
      }
      else
      {
        AppLogger.debug('Valid...');
        AppLogger.debug(
          '''
            ${fullNameController.text}\n
            ${emailController.text}\n
            ${currentPasswordController.text}\n
            ${newPasswordController.text}\n
            ${confirmPasswordController.text}\n
          ''');
        fullNameController.clear();
        emailController.clear();
        currentPasswordController.clear();
        newPasswordController.clear();
        confirmPasswordController.clear();
        showSuccessDialog(context, S.current.changeSuccess);
      }
    }, 
    text: S.current.saveChanges);
  }
}
