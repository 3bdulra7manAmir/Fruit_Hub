import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../core/services/validation/validation.dart';
import '../../../../../core/widgets/textform_field.dart';

class AppartmentFieldWidget extends StatelessWidget
{
  const AppartmentFieldWidget({super.key, required this.apartmentController});

  final TextEditingController apartmentController;

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      keyboardType: TextInputType.name,
      controller: apartmentController,
      validator: (value) => AppValidation.addressValidation(value),
      hintText: S.current.floorApartment,
    );
  }
}