import 'package:flutter/material.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_styles.dart';

class ReviewsCountTextWidget extends StatelessWidget
{
  const ReviewsCountTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text('324 ${S.current.review}', style: AppStyles.extraLight(
      fontColor: AppColors.color.kBlack001, 
      fontWeight: AppFontWeights.boldWeight),
    );
  }
}