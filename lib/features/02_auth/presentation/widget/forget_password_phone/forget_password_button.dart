import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/buttons/custom_button.dart';

class ForgetPasswordButton extends StatelessWidget
{
  const ForgetPasswordButton({super.key, required, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(onPressed: ()
    {
      if (!formKey.currentState!.validate())
        {
          log("Valid ForgetPassword...");
          //AppRouter.router.pushNamed(AppRoutes.home);
        }
        else
        {
          log("InValid ForgetPassword...");
        }
    }, text: "نسيت كلمة المرور");
  }
}