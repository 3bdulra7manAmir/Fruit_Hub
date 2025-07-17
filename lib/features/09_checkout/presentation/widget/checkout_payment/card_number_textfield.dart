import 'package:flutter/material.dart';

import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/textform_field.dart';

class CardNumberWidget extends StatelessWidget
{
  const CardNumberWidget({super.key});

  static final TextEditingController carNumberController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: carNumberController,
      validator: (value) => AppValidation.fullNameValidation(value, context),
      hintText: "رقم البطاقة",
    );
  }
}