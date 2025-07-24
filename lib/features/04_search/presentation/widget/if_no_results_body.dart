import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_shadow_boxes.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/extensions/widget_shadow_box.dart';

class IfNoResultsBody extends StatelessWidget
{
  const IfNoResultsBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children:
      [
        const NoSearchResultsFoundWidget(),
        Sizes.s125.verticalSpace,
        const NoResultsImgWidget(),
        Sizes.s20.verticalSpace,
        Column(
          children:
          [
            Text('البحث', 
            style: AppStyles.bold(fontColor: AppColors.color.kGrey006),
          ),
            Sizes.s16.verticalSpace,
            Text('عفوًا... هذه المعلومات غير متوفرة للحظة', style: AppStyles.extraLight(
              fontColor: AppColors.color.kGrey002, fontWeight: AppFontWeights.regularWeight),
            ),
          ],
        ),
        Sizes.s16.verticalSpace,
      ],
    );
  }
}


class NoSearchResultsFoundWidget extends StatelessWidget
{
  const NoSearchResultsFoundWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Text('لاتوجد نتائج بحث', style: AppStyles.extraLight(
      fontColor: AppColors.color.kGrey002,
      fontWeight: AppFontWeights.regularWeight,
    ),).withShadow(
      shadow: AppShadowBoxes.noSearchResults,
      backgroundColor: AppColors.color.kWhite001,
      borderRadius: AppRadiuses.circular.noSearchResults,
      height: 80.h, width: double.infinity,
      padding: AppPadding.symmetric.xXXSmall,
    );
  }
}


class NoResultsImgWidget extends StatelessWidget
{
  const NoResultsImgWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Center(child: SvgPicture.asset(AppAssets.icons.noSearchResults),);
  }
}