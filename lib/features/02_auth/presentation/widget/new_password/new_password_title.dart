import 'package:flutter/material.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';

class NewPasswordTitleWidget extends StatelessWidget
{
  const NewPasswordTitleWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Text(
      'قم بإنشاء كلمة مرور جديدة لتسجيل الدخول',
      style: AppStyles.bold(
        fontColor: AppColors.color.kBlack001, 
        fontWeight: AppFontWeights.semiBoldWeight
      ), maxLines: 2,
    );
  }
}