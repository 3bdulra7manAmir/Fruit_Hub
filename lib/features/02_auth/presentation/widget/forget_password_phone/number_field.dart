import 'package:flutter/material.dart';

import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/textform_field.dart';

class PhoneNumberWidget extends StatelessWidget
{
  const PhoneNumberWidget({super.key});

  static final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      keyboardType: TextInputType.number,
      controller: phoneController,
      validator: (value) => AppValidation.phoneNumberValidation(value, context),
      hintText: "+20 123 567 8911",
    );
  }
}