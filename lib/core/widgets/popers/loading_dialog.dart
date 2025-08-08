import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/theme/color_manager/colors.dart';
import '../circular_indicator.dart';
import 'dialog.dart';

dynamic loadingDialog(BuildContext context)
{
  customAppDialog(
    context: context, 
    barrierDismissible: false,
    backgroundColor: AppColors.color.kTransparent,
    content: Container(
      width: 20.w, height: 50.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.color.kGrey003.withValues(alpha: 0.4),
      ),
      child: const CustomCircularIndicator()
    ),
  );
}