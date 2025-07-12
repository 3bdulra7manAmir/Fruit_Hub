
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/listview_builder.dart';

class IfPreviousResultsBody extends StatelessWidget
{
  const IfPreviousResultsBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children:
      [
        Sizes.s24.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
          [
            Text("عمليات البحث الأخيرة", style: AppStyles.semiBold(fontColor: AppColors.color.kBlack001),),
            GestureDetector(
              onTap: ()
              {log("Delete All has been Pressed...");},
              child: Text("حذف الكل", style: AppStyles.semiBold(fontColor: AppColors.color.kGrey002),)
            ),
          ],
        ),
        Sizes.s16.verticalSpace,
        const PreviouslySearchedResultsWidget(),
      ],
    );
  }
}


class PreviouslySearchedTextWidget extends StatelessWidget
{
  const PreviouslySearchedTextWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row
    (
      children:
      [
        SvgPicture.asset(AppAssets.icons.watchGrey),
        Sizes.s16.horizontalSpace,
        Text("فراولة", style: AppStyles.bold(fontColor: AppColors.color.kBlack001, fontWeight: AppFontWeights.regularWeight),),
        const Spacer(),
        GestureDetector(
          onTap: () {log("Single Delete has been Pressed...");},
          child: SvgPicture.asset(AppAssets.icons.removeBlacksemisold)
        ),
      ],
    );
  }
}


class PreviouslySearchedResultsWidget extends StatelessWidget
{
  const PreviouslySearchedResultsWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      itemBuilder: (context, index) => const PreviouslySearchedTextWidget(), 
      separatorBuilder: (context, index) => Sizes.s8.verticalSpace, 
      itemCount: 3
    );
  }
}