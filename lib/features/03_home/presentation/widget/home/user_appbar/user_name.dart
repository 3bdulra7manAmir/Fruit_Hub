import 'package:flutter/material.dart';

import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../../core/constants/app_styles.dart';

class UserNameWidget extends StatelessWidget
{
  const UserNameWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        Text("صباح الخير !..", style: AppStyles.bold(
          fontWeight: AppFontWeights.regularWeight,
          fontColor: AppColors.color.kGrey002
          ),
        ),
        Text("شادو", style: AppStyles.bold(fontColor: AppColors.color.kBlack001)),
      ],
    );
  }
}