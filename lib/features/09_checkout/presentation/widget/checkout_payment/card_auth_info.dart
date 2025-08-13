import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/services/validation/validation.dart';
import '../../../../../core/utils/ui/input_formatters.dart';
import '../../../../../core/widgets/textform_field.dart';

class CardAuthInfoWidget extends StatelessWidget
{
  const CardAuthInfoWidget({super.key, required this.expireDateController, required this.cvvCodeController});
  final TextEditingController expireDateController;
  final TextEditingController cvvCodeController;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Expanded(child: ExpireDateWidget(expireDateController: expireDateController,)),
        Sizes.s16.horizontalSpace,
        Expanded(child: CvvCodeWidget(cvvCodeController: cvvCodeController,)),
      ],
    );
  }
}


class ExpireDateWidget extends StatelessWidget
{
  const ExpireDateWidget({super.key, required this.expireDateController});

  final TextEditingController expireDateController;

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      //inputFormatters: AppInputFormatters.expireDate,
      keyboardType: TextInputType.number,
      controller: expireDateController,
      validator: (value) => AppValidation.expireDateValidation(value),
      hintText: S.current.expiryDate,
    );
  }
}


class CvvCodeWidget extends StatelessWidget
{
  const CvvCodeWidget({super.key, required this.cvvCodeController});

  final TextEditingController cvvCodeController;

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      //inputFormatters: AppInputFormatters.digitsOnlyWithLength,
      keyboardType: TextInputType.number,
      controller: cvvCodeController,
      validator: (value) => AppValidation.cvvValidation(value),
      hintText: S.current.cvv,
    );
  }
}