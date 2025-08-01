import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/widgets/buttons/button.dart';

class RegisterButtonWidget extends StatelessWidget
{
  const RegisterButtonWidget({super.key, required this.formKey, required this.fullNameController, required this.emailController, required this.passwordController});
  final GlobalKey<FormState> formKey;
  final TextEditingController fullNameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      text: S.current.createNewAccount,
      onPressed: ()
      {
        if (!formKey.currentState!.validate())
        {
          log('InValid Register...');
          fullNameController.clear();
          emailController.clear();
          passwordController.clear();
        }
        else
        {
          log('Valid Register...');
          log('${fullNameController.text} \t ${emailController.text} \t ${passwordController.text}');
          AppRouter.router.pushNamed(AppRoutes.login);
        }
      },
    );
  }
}