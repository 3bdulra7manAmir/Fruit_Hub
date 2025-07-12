import 'package:e_commerce_app/core/extensions/string.dart';
import 'package:e_commerce_app/core/extensions/widget_textstyle.dart';
import 'package:flutter/widgets.dart';

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
        Text(
          AppStrings.fruit.localized(context, ar: AppStrings.hub), 
          style: AppStyles.extraBlack(fontColor: AppColors.color.kGreen001).byLocale(context,
            ar: AppStyles.extraBlack(fontColor: AppColors.color.kOrange001),
            en: AppStyles.extraBlack(fontColor: AppColors.color.kGreen001),
          ),
        ),
        Text(
          AppStrings.hub.localized(context, ar: AppStrings.fruit),
          style: AppStyles.extraBlack(fontColor: AppColors.color.kOrange001).byLocale(context,
            ar: AppStyles.extraBlack(fontColor: AppColors.color.kGreen001),
            en: AppStyles.extraBlack(fontColor: AppColors.color.kOrange001),
          ),
        ),
      ],
    );
  }
}

