import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class UserProfileInfo extends StatelessWidget
{
  const UserProfileInfo({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text("أحمد ياسر", style: AppStyles.extraLight(fontWeight: AppFontWeights.boldWeight, fontColor: AppColors.color.kBlue001),),
        Sizes.s2.verticalSpace,
        Text("mail@mail.com", style: AppStyles.extraLight(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey023),),
      ],
    );
  }
}
