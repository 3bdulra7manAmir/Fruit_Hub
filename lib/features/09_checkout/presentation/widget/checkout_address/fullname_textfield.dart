import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/textform_field.dart';

class CheckOutFullNameWidget extends StatelessWidget
{
  const CheckOutFullNameWidget({super.key});

  static final TextEditingController fullNameController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      keyboardType: TextInputType.name,
      controller: fullNameController,
      validator: (value) => AppValidation.fullNameValidation(value),
      hintText: S.current.fullName,
    );
  }
}