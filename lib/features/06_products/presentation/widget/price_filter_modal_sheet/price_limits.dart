import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../controllers/slider_line_controller.dart';

class PriceLimitsWidget extends ConsumerWidget
{
  const PriceLimitsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final range = ref.watch(priceSliderProvider);
    return Row(
      children:
      [
        Expanded(
          child: Container(
            height: 36.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: AppRadiuses.circular.xXSmall,
              border: Border.all(color: AppColors.color.kGrey010),
            ),
            child: Text(range.start.round().toString(), style: AppStyles.extraLight(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey023,),
            ),
          ),
        ),
        Sizes.s14.horizontalSpace,
        Text(S.current.to, style: AppStyles.extraLight(fontColor: AppColors.color.kBlack001, fontWeight: AppFontWeights.boldWeight,),),
        Sizes.s14.horizontalSpace,
        Expanded(
          child: Container(
            height: 36.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: AppRadiuses.circular.xXSmall,
              border: Border.all(color: AppColors.color.kGrey010),
            ),
            child: Text(range.end.round().toString(), style: AppStyles.extraLight(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey023,),),
          ),
        ),
      ],
    );
  }
}
