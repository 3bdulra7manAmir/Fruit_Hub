import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/buttons/custom_button.dart';

class RegisterButtonWidget extends StatelessWidget
{
  const RegisterButtonWidget({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      text: "إنشاء حساب جديد",
      onPressed: ()
      {
        if (!formKey.currentState!.validate())
        {
          log("Valid Register...");
          //AppRouter.router.pushNamed(AppRoutes.home);
        }
        else
        {
          log("InValid Register...");
        }
      },
    );
  }
}