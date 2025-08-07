import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../core/services/validation/validation.dart';
import '../../../../../core/widgets/textform_field.dart';

class RegisterFullNameWidget extends StatelessWidget
{
  const RegisterFullNameWidget({super.key, required this.fullNameController});

  final TextEditingController fullNameController;

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