import 'package:flutter/material.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/utils/input_formatters.dart';
import '../../../../../core/widgets/textform_field.dart';

class PhoneNumberWidget extends StatelessWidget
{
  const PhoneNumberWidget({super.key});

  static final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: AppInputFormatters.digitsOnly,
      controller: phoneController,
      validator: (value) => AppValidation.phoneNumberValidation(value, context),
      hintText: '+20 123 567 8911',
      hintStyle: AppStyles.bold(fontColor: AppColors.color.kBlack001,
        fontWeight: AppFontWeights.semiBoldWeight,),
      hintTextDirection: TextDirection.ltr,
    );
  }
}