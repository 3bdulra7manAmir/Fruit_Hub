import 'package:e_commerce_app/core/constants/app_shadow_boxes.dart';
import 'package:e_commerce_app/core/extensions/widget_shadow_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/textform_field.dart';
import 'filter_icon.dart';
import 'search_icon.dart';

class SearchBarWidget extends StatelessWidget
{
  const SearchBarWidget({super.key, required this.onSubmitted, this.controller});

  final void Function(String)? onSubmitted;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      controller: controller,
      suffixIcon: const FilterIconWidget(),
      prefixIcon: const SearchIconWidget(),
      fillColor: AppColors.color.kWhite001,
      hintText: "ابحث عن.......",
      hintStyle: AppStyles.extraLight(
        fontColor: AppColors.color.kGrey002,
        fontWeight: AppFontWeights.regularWeight,
      ),
      keyboardType: TextInputType.text,
      onSubmitted: onSubmitted,
    ).withShadow(shadow: AppShadowBoxes.searchBar, height: 40.h,);
  }
}



