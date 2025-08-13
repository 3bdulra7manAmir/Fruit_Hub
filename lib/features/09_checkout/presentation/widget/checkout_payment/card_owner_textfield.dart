import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../core/services/validation/validation.dart';
import '../../../../../core/utils/ui/input_formatters.dart';
import '../../../../../core/widgets/textform_field.dart';

class CardOwnerNameWidget extends StatelessWidget
{
  const CardOwnerNameWidget({super.key, required this.ownerNameController});

  final TextEditingController ownerNameController;

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      //inputFormatters: AppInputFormatters.lettersOnly,
      keyboardType: TextInputType.emailAddress,
      controller: ownerNameController,
      validator: (value) => AppValidation.fullNameValidation(value),
      hintText: S.current.cardHolderName,
    );
  }
}