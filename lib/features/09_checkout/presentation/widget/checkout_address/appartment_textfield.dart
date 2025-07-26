import 'package:flutter/material.dart';

import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/textform_field.dart';

class AppartmentFieldWidget extends StatelessWidget
{
  const AppartmentFieldWidget({super.key});

  static final TextEditingController apartmentController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      keyboardType: TextInputType.name,
      controller: apartmentController,
      validator: (value) => AppValidation.fullNameValidation(value),
      hintText: 'رقم الطابق , رقم الشقه ..',
    );
  }
}