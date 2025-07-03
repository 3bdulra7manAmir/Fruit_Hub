import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_textform_field.dart';

class LoginEmailWidget extends StatelessWidget
{
  const LoginEmailWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(hintText: "البريد الإلكتروني",);
  }
}