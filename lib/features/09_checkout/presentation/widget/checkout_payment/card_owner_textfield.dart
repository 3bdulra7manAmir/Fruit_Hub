import 'package:flutter/material.dart';

import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/textform_field.dart';

class CardOwnerNameWidget extends StatelessWidget
{
  const CardOwnerNameWidget({super.key});

  static final TextEditingController ownerNameController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: ownerNameController,
      validator: (value) => AppValidation.fullNameValidation(value, context),
      hintText: 'اسم حامل البطاقه',
    );
  }
}