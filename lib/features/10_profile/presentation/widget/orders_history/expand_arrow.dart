import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_images.dart';

class ExpandArrowWidget extends StatelessWidget
{
  const ExpandArrowWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return SvgPicture.asset(AppAssets.icons.downArrowBlack, colorFilter: ColorFilter.mode(AppColors.color.kBlack001, BlendMode.srcIn));
  }
}

