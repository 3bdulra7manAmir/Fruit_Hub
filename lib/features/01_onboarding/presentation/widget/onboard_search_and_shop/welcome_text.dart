
import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_styles.dart';

class WelcomeTextWidget2 extends StatelessWidget
{
  const WelcomeTextWidget2({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context)
  {
    return Text(text, style: AppStyles.semiBold(), 
      textAlign: TextAlign.center, maxLines: 3, 
    ).marginSymmetric(horizontal: (37).w);
  }
}