import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/widgets/buttons/button.dart';
import 'number_field.dart';

class ForgetPasswordButtonWidget extends StatelessWidget
{
  const ForgetPasswordButtonWidget({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

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
          log(PhoneNumberWidget.phoneController.text);
          PhoneNumberWidget.phoneController.clear();
          AppRouter.router.pushNamed(AppRoutes.passwordRecoveryEmail);
        }
    }, text: 'نسيت كلمة المرور');
  }
}