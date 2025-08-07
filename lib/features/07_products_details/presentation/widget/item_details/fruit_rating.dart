import 'dart:developer';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class FruitItemRatingWidget extends StatelessWidget
{
  const FruitItemRatingWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        SvgPicture.asset(AppAssets.icons.itemDetailsStar),
        Sizes.s9.horizontalSpace,
        const RatingAmountTextWidget(),
        Sizes.s9.horizontalSpace,
        const RatingsCountTextWidget(),
        Sizes.s9.horizontalSpace,
        GestureDetector(
          onTap: ()
          {log('Review has been Pressed...'); AppRouter.router.pushNamed(AppRoutes.rate);},
          child: const RatingReviewsTextWidget()
        ),
      ],
    );
  }
}


class RatingAmountTextWidget extends StatelessWidget
{
  const RatingAmountTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text('4.5', style: AppStyles.extraLight(fontColor: AppColors.color.kBlack002),);
  }
}


class RatingsCountTextWidget extends StatelessWidget
{
  const RatingsCountTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text('(30+)', style: AppStyles.extraLight(
      fontColor: AppColors.color.kGrey012, 
      fontWeight: AppFontWeights.regularWeight),
    );
  }
}


class RatingReviewsTextWidget extends StatelessWidget
{
  const RatingReviewsTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text(S.current.review, style: AppStyles.extraLight(
      fontColor: AppColors.color.kGreen001, 
      fontWeight: AppFontWeights.boldWeight,
        textDecoration: TextDecoration.underline,
        textDecorationColor: AppColors.color.kGreen001,
      ),
    );
  }
}