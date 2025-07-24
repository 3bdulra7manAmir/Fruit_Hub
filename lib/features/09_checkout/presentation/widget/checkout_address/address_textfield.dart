import 'package:flutter/material.dart';

import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/textform_field.dart';

class CheckOutAddressWidget extends StatelessWidget
{
  const CheckOutAddressWidget({super.key});

  static final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      keyboardType: TextInputType.name,
      controller: addressController,
      validator: (value) => AppValidation.fullNameValidation(value, context),
      hintText: 'العنوان',
    );
  }
}