import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/textform_field.dart';

class CheckOutCityWidget extends StatelessWidget
{
  const CheckOutCityWidget({super.key, required this.cityController});

  final TextEditingController cityController;

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      keyboardType: TextInputType.name,
      controller: cityController,
      validator: (value) => AppValidation.cityValidation(value),
      hintText: S.current.city,
    );
  }
}