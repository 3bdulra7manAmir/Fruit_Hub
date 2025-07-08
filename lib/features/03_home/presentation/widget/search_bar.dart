
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/custom_textform_field.dart';

class SearchBarWidget extends StatelessWidget
{
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            offset: const Offset(0, 2),
            blurRadius: 9,
          ),
        ],
      ),
      child: CustomTextFormField(
        suffixIcon: Image.asset(AppAssets.icons.filterGreyPNG, width: 20.w, height: 20.h,),
        prefixIcon: Image.asset(AppAssets.icons.searchGreen, width: 20.w, height: 20.h,),
        fillColor: AppColors.color.kWhite001,
        hintText: "ابحث عن.......",
        hintStyle: AppStyles.semiBold(
          fontColor: AppColors.color.kGrey002,
          fontWeight: AppFontWeights.regularWeight,
        ),
        keyboardType: TextInputType.text,
      ),
    );
  }
}