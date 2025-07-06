import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/localization/app_localizations.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import 'onboard_welcome/background_color.dart';
import 'onboard_welcome/fruit_pack_image.dart';
import 'onboard_welcome/welcome_text.dart';

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
              BackgroundColorWidget(color: AppColors.color.kYellow001),
              FruitPackImageWidget(img: AppAssets.icons.fruitPack,),
            ],
          ),
          Sizes.size47.verticalSpace,
          Column(
            children:
            [
              const WelcomeTextWidget(),
              Sizes.size24.verticalSpace,
              WelcomeTextWidget2(text: S.of(context)!.onBoardingDescription,),
            ],
          ),
        ],
      ),
    );
  }
}