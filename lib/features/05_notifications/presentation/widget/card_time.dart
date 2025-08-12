import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/extensions/numbers_and_dates.dart';

class NotificationsTimeWidget extends ConsumerWidget
{
  const NotificationsTimeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Text('${9.toString().localizedNumbers(ref)} صباحا', style: AppStyles.extraLight(
      fontWeight: AppFontWeights.regularWeight, 
      fontColor: AppColors.color.kGrey002),
    );
  }
}