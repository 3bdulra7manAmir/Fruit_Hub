import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/localization/app_localizations.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../onboarding1/background_color_widget.dart';
import '../onboarding1/fruit_pack_image_widget.dart';
import '../onboarding1/welcome_text_widget.dart';

class OnboardingSecond extends StatelessWidget
{
  const OnboardingSecond({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children:
      [
        Stack(
          children:
          [
            BackgroundColorWidget(color: AppColors.color.kGreen002,),
            FruitPackImageWidget(img: AppAssets.icons.pineapple,),
          ],
        ),
        Sizes.size47.verticalSpace,
        Column(
          children:
          [
            Text(S.of(context)!.searchAndShop, style: AppStyles.extraBlack(fontWeight: AppFontWeights.boldWeight),),
            Sizes.size24.verticalSpace,
            WelcomeTextWidget2(text: S.of(context)!.onBoarding2Description,),
          ],
        ),
      ],
    );
  }
}