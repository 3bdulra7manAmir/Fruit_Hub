import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class PriceWidget extends StatelessWidget
{
  const PriceWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children:
      [
        Text("بطيخ", style: AppStyles.semiBold(fontColor: AppColors.color.kBlack001,), maxLines: 1,),
        Sizes.s4.verticalSpace,
        Row(
          children:
          [
            Flexible(
              child: Text("20جنية ", style: AppStyles.semiBold(fontColor: AppColors.color.kOrange001,), maxLines: 1,),
            ),
            Flexible(
              child: Text("/ الكيلو", style: AppStyles.semiBold(fontColor: AppColors.color.kOrange002,), maxLines: 1,),
            ),
          ],
        ),
      ],
    );
  }
}

