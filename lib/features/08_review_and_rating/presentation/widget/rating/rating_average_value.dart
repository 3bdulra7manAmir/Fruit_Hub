import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/extensions/numbers_and_dates.dart';


class RatingAverageValueWidget extends StatelessWidget
{
  const RatingAverageValueWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        const AverageRatingWidget(),
        Sizes.s20.verticalSpace,
        const RecommendationPrecentTextWidget(),
        Sizes.s4.verticalSpace,
        const RecommendedTextWidget(),
      ],
    );
  }
}


class AverageRatingWidget extends StatelessWidget
{
  const AverageRatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        SvgPicture.asset(AppAssets.icons.reviewStar),
        Sizes.s8.horizontalSpace,
        Consumer(
          builder: (_, ref, _) {
            return Text('${4.5.toString().localizedNumbers(ref)}', style: AppStyles.extraLight(
              fontColor: AppColors.color.kBlack001, 
              fontWeight: AppFontWeights.boldWeight),
              );
          },
        ),
      ],
    );
  }
}


class RecommendationPrecentTextWidget extends ConsumerWidget
{
  const RecommendationPrecentTextWidget({super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Text('${88.toString().localizedNumbers(ref)}%', style: AppStyles.bold(
      fontWeight: AppFontWeights.regularWeight, 
      fontColor: AppColors.color.kBlack001),
    );
  }
}


class RecommendedTextWidget extends StatelessWidget
{
  const RecommendedTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Text(S.current.recommended, style: AppStyles.extraLight(
      fontWeight: AppFontWeights.regularWeight, 
      fontColor: AppColors.color.kBlack001),
    );
  }
}