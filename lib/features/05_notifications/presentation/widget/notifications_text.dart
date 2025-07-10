import 'package:flutter/material.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_styles.dart';

class NotificationsTextWidget extends StatelessWidget
{
  const NotificationsTextWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Text("خصم", style: AppStyles.semiBold(fontColor: AppColors.color.kGrey009),),
        Text(" ", style: AppStyles.semiBold(fontColor: AppColors.color.kGrey009),),
        Text("50%", style: AppStyles.semiBold(fontColor: AppColors.color.kRed001),),
        Text(" ", style: AppStyles.semiBold(fontColor: AppColors.color.kGrey009),),
        Text("علي اسعار الفواكه بمناسبه العيد", 
        style: AppStyles.semiBold(fontColor: AppColors.color.kGrey009), maxLines: 2,),
      ],
    );
  }
}