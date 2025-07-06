import 'dart:developer';
import 'package:e_commerce_app/config/router/app_router.dart';
import 'package:e_commerce_app/core/widgets/buttons/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../../config/router/app_routes.dart';

class NewPasswordButtonWidget extends StatelessWidget
{
  const NewPasswordButtonWidget({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      text: "إنشاء كلمة مرور جديدة",
      onPressed: ()
      {
        if (!formKey.currentState!.validate())
        {
          log("Create Password Has been Pressed...");
          AppRouter.router.pushReplacementNamed(AppRoutes.login);
        }
        else
        {
          log("InValid Creation...");
        }
      },  
    );
  }
}