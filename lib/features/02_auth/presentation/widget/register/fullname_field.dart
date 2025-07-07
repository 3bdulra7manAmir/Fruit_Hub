import 'package:flutter/material.dart';

import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/custom_textform_field.dart';

class RegisterFullNameWidget extends StatelessWidget
{
  const RegisterFullNameWidget({super.key});

  static final TextEditingController fullNameController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      keyboardType: TextInputType.name,
      controller: fullNameController,
      validator: (value) => AppValidation.fullNameValidation(value, context),
      hintText: "الاسم كامل",
    );
  }
}