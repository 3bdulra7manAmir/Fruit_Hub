import 'package:e_commerce_app/config/theme/color_manager/colors.dart';
import 'package:e_commerce_app/config/theme/font_manager/font_weights.dart';
import 'package:e_commerce_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class ChooseSuitablePaymentTextWidget extends StatelessWidget
{
  const ChooseSuitablePaymentTextWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Text("أختار طريقه الدفع المناسبه :", style: AppStyles.extraLight(
      fontColor: AppColors.color.kBlack001, 
      fontWeight: AppFontWeights.boldWeight),
    );
  }
}