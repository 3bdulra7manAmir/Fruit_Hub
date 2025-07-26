import 'package:flutter/material.dart';

import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/utils/input_formatters.dart';
import '../../../../../core/widgets/textform_field.dart';

class CardOwnerNameWidget extends StatelessWidget
{
  const CardOwnerNameWidget({super.key});

  static final TextEditingController ownerNameController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      inputFormatters: AppInputFormatters.lettersOnly,
      keyboardType: TextInputType.emailAddress,
      controller: ownerNameController,
      validator: (value) => AppValidation.fullNameValidation(value),
      hintText: 'اسم حامل البطاقه',
    );
  }
}