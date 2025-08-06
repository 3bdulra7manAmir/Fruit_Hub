import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import 'payment_radio.dart';
import 'payment_text_info.dart';

class PaymentOptionCard extends StatelessWidget
{
  const PaymentOptionCard({
    super.key,
    required this.isSelected,
  });
  final bool isSelected;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: AppColors.color.kGrey007.withValues(alpha: 0.2),
        borderRadius: AppRadiuses.circular.xXXXXSmall,
        border: Border.all(color: isSelected ? AppColors.color.kGreen001 : Colors.transparent,),
      ),
      child: Row(
        children:
        [
          PaymentRadioButtonWidget(isSelected: isSelected),
          Sizes.s10.horizontalSpace,
          const PaymentOptionTextWidget(),
          const Spacer(),
          const PaymentCardPriceTextWidget(),
        ],
      ),
    );
  }
}


