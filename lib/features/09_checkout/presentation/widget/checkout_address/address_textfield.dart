import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/textform_field.dart';

class CheckOutAddressWidget extends StatelessWidget
{
  const CheckOutAddressWidget({super.key, required this.addressController});

  final TextEditingController addressController;

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      keyboardType: TextInputType.streetAddress,
      controller: addressController,
      validator: (value) => AppValidation.addressValidation(value),
      hintText: S.current.address,
    );
  }
}