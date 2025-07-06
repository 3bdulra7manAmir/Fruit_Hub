import 'package:flutter/material.dart';

import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/custom_textform_field.dart';

class RegisterFullNameWidget extends StatelessWidget
{
  const RegisterFullNameWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      validator: (value) => AppValidation.fullNameValidation(value, context),
      hintText: "الاسم كامل",
    );
  }
}