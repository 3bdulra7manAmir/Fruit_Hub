import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/localization/app_localizations.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import 'onboard_welcome/background_color.dart';
import 'onboard_welcome/fruit_pack_img.dart';
import 'onboard_welcome/welcome_text.dart';

class SearchAndShop extends StatelessWidget
{
  const SearchAndShop({super.key});

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
              BackgroundColorWidget(color: AppColors.color.kGreen002,),
              FruitPackImgWidget(img: AppAssets.icons.pineapple,),
            ],
          ),
          Sizes.s47.verticalSpace,
          Column(
            children:
            [
              Text(S.of(context)!.searchAndShop, style: AppStyles.extraBlack(fontWeight: AppFontWeights.boldWeight),),
              Sizes.s24.verticalSpace,
              WelcomeTextWidget2(text: S.of(context)!.onBoarding2Description,),
            ],
          ),
        ],
      ),
    );
  }
}