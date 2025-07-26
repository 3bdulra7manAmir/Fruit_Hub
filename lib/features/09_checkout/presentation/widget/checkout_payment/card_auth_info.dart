import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/utils/input_formatters.dart';
import '../../../../../core/widgets/textform_field.dart';

class CardAuthInfoWidget extends StatelessWidget
{
  const CardAuthInfoWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        const Expanded(child: ExpireDateWidget()),
        Sizes.s16.horizontalSpace,
        const Expanded(child: CvvCodeWidget()),
      ],
    );
  }
}


class ExpireDateWidget extends StatelessWidget
{
  const ExpireDateWidget({super.key});

  static final TextEditingController expireDateController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      inputFormatters: AppInputFormatters.expireDate,
      keyboardType: TextInputType.number,
      controller: expireDateController,
      validator: (value) => AppValidation.expireDateValidation(value),
      hintText: 'تاريخ الصلاحيه',
    );
  }
}


class CvvCodeWidget extends StatelessWidget
{
  const CvvCodeWidget({super.key});

  static final TextEditingController cvvCodeController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      inputFormatters: AppInputFormatters.digitsOnlyWithLength,
      keyboardType: TextInputType.number,
      controller: cvvCodeController,
      validator: (value) => AppValidation.cvvValidation(value),
      hintText: 'CVV',
    );
  }
}