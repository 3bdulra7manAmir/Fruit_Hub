import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/widgets/buttons/button.dart';

class ForgetPasswordButtonWidget extends StatelessWidget
{
  const ForgetPasswordButtonWidget({super.key, required this.formKey, required this.emailController});

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(onPressed: ()
    {
      if (!formKey.currentState!.validate())
        {
          log('InValid ForgetPassword...');
        }
        else
        {
          log('Valid ForgetPassword...');
          log(emailController.text);
          emailController.clear();
          AppRouter.router.pushNamed(AppRoutes.passwordRecoveryEmail);
        }
    }, text: S.current.forgotPassword);
  }
}