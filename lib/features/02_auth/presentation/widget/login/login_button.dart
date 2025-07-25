import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/widgets/buttons/button.dart';
import 'login_email_field.dart';
import 'login_password_field.dart';

class LoginButtonWidget extends StatelessWidget
{
  const LoginButtonWidget({super.key, required this.formKey,});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      text: 'تسجيل دخول',
      onPressed: ()
      {
        if (formKey.currentState!.validate())
        {
          log('Valid Login...');
          final email = LoginEmailWidget.emailController.text;
          final password = LoginPasswordWidget.passwordController.text;
          log('$email \t $password');
          if (email == 'shadow@gmail.com' && password == '12345678aA#')
          {
            LoginEmailWidget.emailController.clear();
            LoginPasswordWidget.passwordController.clear();
            AppRouter.router.pushReplacementNamed(AppRoutes.home);
          }
        }
        else
        {
          log('InValid Login...');
          LoginEmailWidget.emailController.clear();
          LoginPasswordWidget.passwordController.clear();
        }
      },  
    );
  }
}