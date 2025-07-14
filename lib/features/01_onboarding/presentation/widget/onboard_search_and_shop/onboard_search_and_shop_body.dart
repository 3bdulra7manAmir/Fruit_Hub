import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/localization/app_localizations.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../onboard_welcome/clipped_background.dart';
import '../fruit_img.dart';
import '../welcome_subtitle_text.dart';

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
              ClippedBackgroundWidget(color: AppColors.color.kGreen002,),
              FruitImgWidget(img: AppAssets.icons.pineapple,),
            ],
          ),
          Sizes.s47.verticalSpace,
          Column(
            children:
            [
              const SearchAndShopTitleWidget(),
              Sizes.s24.verticalSpace,
              WelcomeSubtitleWidget(text: S.of(context)!.onBoarding2Description,),
            ],
          ),
        ],
      ),
    );
  }
}

class SearchAndShopTitleWidget extends StatelessWidget
{
  const SearchAndShopTitleWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text(S.of(context)!.searchAndShop, 
    style: AppStyles.black(fontWeight: AppFontWeights.boldWeight),
  );
  }
}