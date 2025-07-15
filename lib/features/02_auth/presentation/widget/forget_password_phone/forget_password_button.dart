import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/widgets/buttons/button.dart';
import 'number_field.dart';

class ForgetPasswordButtonWidget extends StatelessWidget
{
  const ForgetPasswordButtonWidget({super.key, required, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(onPressed: ()
    {
      if (!formKey.currentState!.validate())
        {
          log("Valid ForgetPassword...");
          log(PhoneNumberWidget.phoneController.text);
          PhoneNumberWidget.phoneController.clear();
          AppRouter.router.pushNamed(AppRoutes.passwordRecoveryEmail);
        }
        else
        {
          log("InValid ForgetPassword...");
        }
    }, text: "نسيت كلمة المرور");
  }
}