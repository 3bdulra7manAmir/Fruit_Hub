import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';

class StepperTitleWidget extends StatelessWidget
{
  const StepperTitleWidget({
    super.key,
    required this.isCompleted,
    required this.isActive,
    required this.titles, 
    required this.index,
  });

  final bool isCompleted;
  final bool isActive;
  final List<String> titles;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Container(width: 20.w, height: 20.w, alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isCompleted || isActive ? AppColors.color.kGreen001 : AppColors.color.kGrey016,
            shape: BoxShape.circle,
          ),
          child: isCompleted
          ? Icon(Icons.check, color: AppColors.color.kWhite001, size: 13.w)
            : Text('${index + 1}', style: AppStyles.extraLight(
            fontColor: isActive ? AppColors.color.kWhite001 : AppColors.color.kBlack001,),
          ),
        ),
        Sizes.s6.horizontalSpace,
        Text(titles[index], style: isActive
        ? AppStyles.extraLight(fontColor: AppColors.color.kGreen001)
          : AppStyles.extraLight(fontColor: AppColors.color.kGrey017),
        ),
      ],
    );
  }
}