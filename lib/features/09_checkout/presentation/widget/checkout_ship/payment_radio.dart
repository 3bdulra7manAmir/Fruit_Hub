import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';

class PaymentRadioButtonWidget extends StatelessWidget
{
  const PaymentRadioButtonWidget({super.key, required this.isSelected,});
  final bool isSelected;

  @override
  Widget build(BuildContext context)
  {
    return Container(width: 18.w, height: 18.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle, 
        border: Border.all(color: AppColors.color.kGrey002,),
      ),
      child: isSelected
      ? Center(
          child: Container(width: 10.w, height: 10.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.color.kGreen001,
            ),
          ),
        )
      : const SizedBox.shrink(),
    );
  }
}
