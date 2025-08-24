import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class NoFavouritsWidget extends StatelessWidget
{
  const NoFavouritsWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Column(
        children:
        [
          SvgPicture.asset(AppAssets.icons.fruitPack),
          Sizes.s10.verticalSpace,
          Text(S.current.noFavouritFruits, style: AppStyles.bold(fontColor: AppColors.color.kBlack001),),
        ],
      )
    );
  }
}