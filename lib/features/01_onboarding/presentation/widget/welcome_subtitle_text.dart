
import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/localization/app_localizations.dart';
import '../../../../core/constants/app_styles.dart';

class WelcomeSubtitleWidget extends StatelessWidget
{
  const WelcomeSubtitleWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context)
  {
    return Text(S.of(context)!.onBoarding2Description, style: AppStyles.light(), 
      textAlign: TextAlign.center, maxLines: 3, 
    ).marginSymmetric(horizontal: (37).w);
  }
}