import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/widgets/buttons/button.dart';

class LoginButtonWidget extends StatelessWidget
{
  const LoginButtonWidget({super.key, required this.formKey, required this.emailController, required this.passwordController,});
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      text: S.current.login,
      onPressed: ()
      {
        if (formKey.currentState!.validate())
        {
          log('Valid Login...');
          final email = emailController.text;
          final password = passwordController.text;
          log('$email \t $password');
          if (email == 'shadow@gmail.com' && password == '12345678aA#')
          {
            emailController.clear();
            passwordController.clear();
            AppRouter.router.pushReplacementNamed(AppRoutes.home);
          }
        }
        else
        {
          log('InValid Login...');
          emailController.clear();
          passwordController.clear();
        }
      },  
    );
  }
}