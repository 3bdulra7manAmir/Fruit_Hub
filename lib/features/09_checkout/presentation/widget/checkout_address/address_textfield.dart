import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
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
      keyboardType: TextInputType.streetAddress,
      controller: addressController,
      validator: (value) => AppValidation.fullNameValidation(value),
      hintText: S.current.address,
    );
  }
}