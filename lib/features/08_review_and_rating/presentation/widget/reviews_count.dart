import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/extensions/numbers_and_dates.dart';


class ReviewsCountTextWidget extends ConsumerWidget
{
  const ReviewsCountTextWidget({super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Text('${324.toString().localizedNumbers(ref)} ${S.current.review}', style: AppStyles.extraLight(
      fontColor: AppColors.color.kBlack001, 
      fontWeight: AppFontWeights.boldWeight),
    );
  }
}