import 'package:e_commerce_app/core/extensions/string.dart';
import 'package:e_commerce_app/core/extensions/widget_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/localization/app_localizations.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/constants/app_styles.dart';
import '../welcome_subtitle_text.dart';
import 'clipped_background.dart';
import '../fruit_img.dart';

class OnboardingWelcome extends StatelessWidget
{
  const OnboardingWelcome({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
      child: Column(
        children:
        [
          Stack(
            children:
            [
              ClippedBackgroundWidget(color: AppColors.color.kYellow001),
              FruitImgWidget(img: AppAssets.icons.fruitPack,),
            ],
          ),
          Sizes.s47.verticalSpace,
          Column(
            children:
            [
              const FruitHubTitleWidget(),
              Sizes.s24.verticalSpace,
              WelcomeSubtitleWidget(text: S.of(context)!.onBoardingDescription,),
            ],
          ),
        ],
      ),
    );
  }
}


class FruitHubTitleWidget extends StatelessWidget
{
  const FruitHubTitleWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: AppStyles.extraBlack(fontWeight: AppFontWeights.boldWeight),
        children:
        [
          TextSpan(text: S.of(context)!.welcomeIn),
          const TextSpan(text: ' '),
          TextSpan(
            text: AppStrings.fruit.localized(context, ar: AppStrings.fruit, en: AppStrings.fruit,),
            style: AppStyles.extraBlack().byLocale(context, 
              ar: AppStyles.extraBlack(fontColor: AppColors.color.kGreen001,),
              en: AppStyles.extraBlack(fontColor: AppColors.color.kGreen001,),
            ),
          ),
          TextSpan(
            text: AppStrings.hub.localized(context, ar: AppStrings.hub, en: AppStrings.hub,),
            style: AppStyles.extraBlack().byLocale(context, 
              ar: AppStyles.extraBlack(fontColor: AppColors.color.kOrange001,),
              en: AppStyles.extraBlack(fontColor: AppColors.color.kOrange001,),
            ),
          ),
        ],
      ),
    );
  }
}
