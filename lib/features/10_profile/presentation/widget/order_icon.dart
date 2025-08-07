import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_paddings.dart';

class OrderIconWidget extends StatelessWidget
{
  const OrderIconWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.all.trackClosedOrder,
      alignment: Alignment.center, 
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.circular.large,
        color: AppColors.color.kGreen006,
      ),child: SvgPicture.asset(AppAssets.icons.closedOrderBox),
    );
  }
}