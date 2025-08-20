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
import '../../../../../core/utils/logger/app_logger.dart';
import '../../../../../core/widgets/snackbar.dart';
import '../../../../../core/widgets/textform_field.dart';
import '../../../../06_products/presentation/widget/price_filter_modal_sheet/modal_sheet_body.dart';
import 'filter_icon.dart';
import 'search_icon.dart';

class SearchBarWidget extends StatelessWidget
{
  const SearchBarWidget({super.key, this.onSubmitted, required this.controller, this.searchIconOnTap});

  final void Function(String)? onSubmitted;
  final void Function()? searchIconOnTap;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      controller: controller,
      suffixIcon: GestureDetector(
        onTap: () {
          AppLogger.debug('Filter Settings has been Pressed...'); 
          priceFilterSheet(context);
        },
        child: const FilterIconWidget()
      ),
      prefixIcon: GestureDetector(
        onTap: searchIconOnTap ?? () {
          if (controller.text.isEmpty)
          {CustomSnackBar().show(context, S.current.emptySearch);}
          else {AppRouter.router.pushSearchString(fruitName: controller.text);}
        },
        child: const SearchIconWidget()
      ),
      hintText: S.current.searchFor,
      hintStyle: AppStyles.extraLight(
        fontColor: AppColors.color.kGrey002,
        fontWeight: AppFontWeights.regularWeight,
      ),
      keyboardType: TextInputType.text,
      onSubmitted: (value){
        if (controller.text.isEmpty)
        {CustomSnackBar().show(context, S.current.emptySearch);}
        else {AppRouter.router.pushSearchString(fruitName: controller.text);}
      },
    ).withShadow(shadow: AppShadowBoxes.searchBar, height: 40.h,);
  }
}



