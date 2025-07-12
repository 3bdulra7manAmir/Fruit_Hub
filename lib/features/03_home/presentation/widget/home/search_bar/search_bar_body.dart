import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../../../../core/widgets/textform_field.dart';
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
    return Container(
      height: 40.h,
      decoration: const BoxDecoration(
        boxShadow:
        [
          BoxShadow(
          color: Color(0x0A000000),
          offset: Offset(0, 2),
          blurRadius: 9,),
        ],
      ),
      child: CustomTextFormField(
        controller: controller,
        suffixIcon: const FilterIconWidget(),
        prefixIcon: const SearchIconWidget(),
        fillColor: AppColors.color.kWhite001,
        hintText: "ابحث عن.......",
        hintStyle: AppStyles.semiBold(
          fontColor: AppColors.color.kGrey002,
          fontWeight: AppFontWeights.regularWeight,
        ),
        keyboardType: TextInputType.text,
        onSubmitted: onSubmitted,
      ),
    );
  }
}



