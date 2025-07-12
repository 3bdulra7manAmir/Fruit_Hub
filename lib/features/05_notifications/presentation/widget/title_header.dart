import 'package:flutter/material.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_styles.dart';

class HeaderWidget extends StatelessWidget
{
  const HeaderWidget({super.key, required this.header,});
  final String header;

  @override
  Widget build(BuildContext context)
  {
    return Text(header, style: AppStyles.bold(fontColor: AppColors.color.kBlack001),);
  }
}

