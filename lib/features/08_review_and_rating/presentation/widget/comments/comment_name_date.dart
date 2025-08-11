import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/extensions/numbers_and_dates.dart';

class CommentInfoWidget extends ConsumerWidget
{
  const CommentInfoWidget({super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Column(
      children:
      [
        Text('Ahmed Amr', style: AppStyles.bold(
          fontWeight: AppFontWeights.semiBoldWeight, 
          fontColor: AppColors.color.kBlack001),
        ),
        Sizes.s6.verticalSpace,
        Text('${25.toString().localizedNumbers(ref)}/${06.toString().localizedNumbers(ref)}/${2020.toString().localizedNumbers(ref)}', style: AppStyles.extraLight(
          fontWeight: AppFontWeights.regularWeight, 
          fontColor: AppColors.color.kGrey002),
        ),
      ],
    );
  }
}
