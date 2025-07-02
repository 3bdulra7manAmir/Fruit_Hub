import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/localization/app_localizations.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/constants/app_styles.dart';

class WelcomeTextWidget extends StatelessWidget
{
  const WelcomeTextWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        Text(S.of(context)!.welcomeIn, style: AppStyles.extraBlack(fontWeight: AppFontWeights.boldWeight),),
        Text(" ", style: AppStyles.extraBlack(fontWeight: AppFontWeights.boldWeight),),
        Text(AppStrings.hub, style: AppStyles.extraBlack(fontColor: AppColors.color.kGreen001),),
        Text(AppStrings.fruit, style: AppStyles.extraBlack(fontColor: AppColors.color.kOrange001)),
      ],
    );
  }
}


class WelcomeTextWidget2 extends StatelessWidget
{
  const WelcomeTextWidget2({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context)
  {
    return Text(
      text, 
      style: AppStyles.semiBold(), 
      textAlign: TextAlign.center,
      maxLines: 3, 
    ).marginSymmetric(horizontal: (37).w);
  }
}