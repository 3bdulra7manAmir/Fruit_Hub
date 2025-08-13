// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../core/services/validation/validation.dart';
import '../../../../../core/utils/ui/input_formatters.dart';
import '../../../../../core/widgets/textform_field.dart';

class CardNumberWidget extends StatelessWidget
{
  const CardNumberWidget({super.key, required this.cardNumberController});

  final TextEditingController cardNumberController;

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      //inputFormatters: AppInputFormatters.digitsOnly,
      keyboardType: TextInputType.number,
      controller: cardNumberController,
      validator: (value) => AppValidation.paymentMethodNumValidation(value),
      hintText: S.current.cardNumber,
    );
  }
}