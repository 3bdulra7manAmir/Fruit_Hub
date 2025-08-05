import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/routes_extras.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_shadow_boxes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/extensions/shadow_box.dart';
import '../../../../../core/widgets/textform_field.dart';
import 'filter_icon.dart';
import 'search_icon.dart';

class SearchBarWidget extends StatelessWidget
{
  const SearchBarWidget({super.key, required this.onSubmitted, required this.controller});

  final void Function(String)? onSubmitted;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      controller: controller,
      suffixIcon: const FilterIconWidget(),
      prefixIcon: GestureDetector(
        onTap: ()
        {
          log('Search Settings has been Pressed...');
          AppRouter.router.pushSearchString(fruitName: controller.text);
          controller.clear();
        } ,
        child: const SearchIconWidget()
      ),
      hintText: S.current.searchFor,
      hintStyle: AppStyles.extraLight(
        fontColor: AppColors.color.kGrey002,
        fontWeight: AppFontWeights.regularWeight,
      ),
      keyboardType: TextInputType.text,
      onSubmitted: onSubmitted,
    ).withShadow(shadow: AppShadowBoxes.searchBar, height: 40.h,);
  }
}



