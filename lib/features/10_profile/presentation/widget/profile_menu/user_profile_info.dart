import 'package:firebase_auth/firebase_auth.dart';
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
        Text(FirebaseAuth.instance.currentUser!.displayName ?? 'User added before name adding', style: AppStyles.extraLight(fontWeight: AppFontWeights.boldWeight, fontColor: AppColors.color.kBlue001),),
        Sizes.s2.verticalSpace,
        Text(FirebaseAuth.instance.currentUser!.email ?? '', style: AppStyles.extraLight(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey023),),
      ],
    );
  }
}
