import 'dart:developer';
import 'package:e_commerce_app/core/widgets/buttons/custom_button.dart';
import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget
{
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      text: "إنشاء حساب جديد",
      onPressed: ()
      {
        log("Register Has been PRESSED...");
      },
    );
  }
}