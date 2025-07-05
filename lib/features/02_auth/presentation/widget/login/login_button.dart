// ignore_for_file: unused_import

import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/widgets/buttons/custom_button.dart';

class LoginButtonWidget extends StatelessWidget
{
  const LoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      text: "تسجيل دخول",
      onPressed: (){ log("Login Pressed...");  },  //AppRouter.router.pushNamed(AppRoutes.home);
    );
  }
}