import 'package:flutter/material.dart';

import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/utils/input_formatters.dart';
import '../../../../../core/widgets/textform_field.dart';

class CardNumberWidget extends StatelessWidget
{
  const CardNumberWidget({super.key});

  static final TextEditingController carNumberController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      inputFormatters: AppInputFormatters.digitsOnly,
      keyboardType: TextInputType.number,
      controller: carNumberController,
      validator: (value) => AppValidation.fullNameValidation(value),
      hintText: 'رقم البطاقة',
    );
  }
}