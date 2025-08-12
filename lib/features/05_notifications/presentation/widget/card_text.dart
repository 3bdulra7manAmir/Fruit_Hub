import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/extensions/numbers_and_dates.dart';

class NotificationsTextWidget extends ConsumerWidget
{
  const NotificationsTextWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return RichText(
      text: TextSpan(
        style: AppStyles.extraLight(fontColor: AppColors.color.kGrey009),
        children:
        [
          const TextSpan(text: 'خصومات'),
          TextSpan(text: ' ${50.toString().localizedNumbers(ref)}% ', style: AppStyles.extraLight(fontColor: AppColors.color.kRed001),),
          const TextSpan(text: 'علي اسعار الفواكه بمناسبه العيد'),
        ],
      ), maxLines: 2
    );
  }
}