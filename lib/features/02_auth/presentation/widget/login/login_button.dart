// ignore_for_file: unused_import

import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/widgets/buttons/custom_button.dart';

class LoginButtonWidget extends StatelessWidget
{
  const LoginButtonWidget({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      text: "تسجيل دخول",
      onPressed: ()
      {
        if (!formKey.currentState!.validate())
        {
          log("Valid Login...");
          //AppRouter.router.pushNamed(AppRoutes.home);
        }
        else
        {
          log("InValid Login...");
        }
      },  
    );
  }
}