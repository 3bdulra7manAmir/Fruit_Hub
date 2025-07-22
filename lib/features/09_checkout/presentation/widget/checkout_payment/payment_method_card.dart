import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';

class PaymentMethodCardWidget extends StatelessWidget
{
  const PaymentMethodCardWidget({super.key, required this.paymentMethodImg, this.width, this.height});

  final String paymentMethodImg;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: width ?? 67.w, height: height ?? 43.h, alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.color.kWhite001,
        borderRadius: AppRadiuses.circular.xXXXXSmall,
        border: Border.all(color: AppColors.color.kGrey018),
        boxShadow:
        [
          // BoxShadow(
          //   color: const Color(0x14B7B7B7), 
          //   offset: Offset(0, 20),
          //   blurRadius: 20,
          // ),
          // BoxShadow(
          //   color: const Color(0x14B7B7B7),
          //   offset: Offset(0, 40),
          //   blurRadius: 20,
          //   spreadRadius: 20,
          // ),
        ]
      ),
      child: SvgPicture.asset(paymentMethodImg),
    );
  }
}