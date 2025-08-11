
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/extensions/numbers_and_dates.dart';
import '../../../../../core/widgets/linear_indicator.dart';

class RatingBarWidget extends StatelessWidget
{
  const RatingBarWidget({super.key, required this.rating});
  final int rating;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Expanded(
          child: ClipRRect(
            borderRadius: AppRadiuses.circular.linearRatingBar,
            child: CustomLinearIndicator(
              backgroundColor: AppColors.color.kGrey015,
              progressColor: AppColors.color.kOrange003,
              lineHeight: 8.h, percent: 0.6,
            ),
          ),
        ),
        Sizes.s8.horizontalSpace,
        Consumer(
          builder: (_, ref, _)
          {
            return Text(rating.toString().localizedNumbers(ref)!, 
              style: AppStyles.extraLight(fontColor: AppColors.color.kBlack001),);
          },
        ),
      ],
    );
  }
}
