import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_textform_field.dart';

class RegisterFullNameWidget extends StatelessWidget
{
  const RegisterFullNameWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(hintText: "الاسم كامل",);
  }
}