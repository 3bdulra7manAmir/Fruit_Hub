import 'package:flutter/material.dart';

import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/custom_textform_field.dart';

class PhoneNumberFormFieldWidget extends StatelessWidget
{
  const PhoneNumberFormFieldWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      validator: (value) => AppValidation.phoneNumberValidation(value, context),
      hintText: "+20 123 567 8911",
    );
  }
}