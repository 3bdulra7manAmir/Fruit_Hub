import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/services/validation/validation.dart';
import '../../../../../core/widgets/textform_field.dart';

class ForgetPasswordEmailWidget extends StatelessWidget
{
  const ForgetPasswordEmailWidget({super.key, required this.emailController});

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      validator: (value) => AppValidation.emailValidation(value),
      hintText: S.current.email,
      hintStyle: AppStyles.bold(fontColor: AppColors.color.kBlack001,
        fontWeight: AppFontWeights.semiBoldWeight,),
      //hintTextDirection: TextDirection.ltr,
    );
  }
}