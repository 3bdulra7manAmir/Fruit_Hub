import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/widgets/buttons/button.dart';
import '../../../../../core/widgets/snackbar.dart';
import 'password_changed_dialog.dart';

class NewPasswordButtonWidget extends StatelessWidget
{
  const NewPasswordButtonWidget({super.key, required this.formKey, required this.passwordController, required this.password2Controller});
  final GlobalKey<FormState> formKey;
  final TextEditingController passwordController;
  final TextEditingController password2Controller;

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      text: S.current.createNewPassword,
      onPressed: ()
      {
        if (!formKey.currentState!.validate())
        {
          log('InValid Creation...');
        }
        else
        {
          if(passwordController.text == password2Controller.text)
          {
            log('Create Password Has been Pressed...');
            log('${passwordController.text} \t ${password2Controller.text}');
            showSuccessDialog(context);
            AppRouter.router.pushReplacementNamed(AppRoutes.login);
          }
          else
          {
            passwordController.clear();
            password2Controller.clear();
            CustomSnackBar.show(context, S.current.passwordsDontMatchFunny);
          }
        }
      },  
    );
  }
}

