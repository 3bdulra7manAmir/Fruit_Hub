import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/services/validation/app_validation.dart';
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
        Expanded(child: ExpireDateWidget()),
        Sizes.s16.horizontalSpace,
        Expanded(child: CvvCodeWidget()),
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
      keyboardType: TextInputType.emailAddress,
      controller: expireDateController,
      validator: (value) => AppValidation.fullNameValidation(value, context),
      hintText: "تاريخ الصلاحيه",
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
      keyboardType: TextInputType.emailAddress,
      controller: cvvCodeController,
      validator: (value) => AppValidation.fullNameValidation(value, context),
      hintText: "CVV",
    );
  }
}