import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class PaymentMethodCard extends StatelessWidget
{
  const PaymentMethodCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.circular.xXXSmall,
        color: AppColors.color.kGrey025,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children:
        [
          Text("**** 1234 ", style: AppStyles.bold(
            fontColor: AppColors.color.kGrey002, 
            fontWeight: AppFontWeights.semiBoldWeight),
            textDirection: TextDirection.ltr,
          ),
          Sizes.s15.horizontalSpace,
          SvgPicture.asset(AppAssets.icons.mastercard),
          Sizes.s15.horizontalSpace,
        ],
      ),
    );
  }
}
