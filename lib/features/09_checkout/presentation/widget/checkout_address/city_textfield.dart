import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/textform_field.dart';

class CheckOutCityWidget extends StatelessWidget
{
  const CheckOutCityWidget({super.key});

  static final TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      keyboardType: TextInputType.name,
      controller: cityController,
      validator: (value) => AppValidation.fullNameValidation(value),
      hintText: S.current.city,
    );
  }
}