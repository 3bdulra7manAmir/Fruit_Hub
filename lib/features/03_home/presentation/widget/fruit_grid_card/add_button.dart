import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/widgets/identity_widgets/widgets.dart';

class FruitAddButtonWidget extends StatelessWidget
{
  const FruitAddButtonWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 36.w, height: 36.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.color.kGreen001,
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(WidgetFilpper.crossColor(context), fit: BoxFit.scaleDown,),
    );
  }
}
