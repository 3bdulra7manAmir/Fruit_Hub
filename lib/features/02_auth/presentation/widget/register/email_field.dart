import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_textform_field.dart';

class RegisterEmailWidget extends StatelessWidget
{
  const RegisterEmailWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(hintText: "البريد الإلكتروني",);
  }
}