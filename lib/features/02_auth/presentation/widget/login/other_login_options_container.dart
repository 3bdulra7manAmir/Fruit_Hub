import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class OtherOptionCardWidget extends StatelessWidget {
  const OtherOptionCardWidget({
    super.key,
    required this.text,
    required this.logo,
    this.isColored,
    this.height,
    this.width,
  });

  final double? height;
  final double? width;
  final String text;
  final String logo;
  final bool? isColored;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 56.h,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: AppColors.color.kWhite005,
        borderRadius: AppRadiuses.circular.medium,
        border: Border.all(color: AppColors.color.kGrey028),
      ),
      child: Row(
        children:
        [
          Sizes.s18.horizontalSpace,
          SvgPicture.asset(logo, colorFilter: (isColored ?? false)
            ? ColorFilter.mode(AppColors.color.kBlack001, BlendMode.srcIn) : null,
          ),
          Sizes.s53.horizontalSpace,
          Text(text, style: AppStyles.bold(fontColor: AppColors.color.kBlack001,
              fontWeight: AppFontWeights.semiBoldWeight,
            ),
          ),
        ],
      ),
    );
  }
}
