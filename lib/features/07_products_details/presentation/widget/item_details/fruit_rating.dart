import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class FruitItemRatingWidget extends StatelessWidget
{
  const FruitItemRatingWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        SvgPicture.asset(AppAssets.icons.star),
        Sizes.s9.horizontalSpace,
        Text("4.5", style: AppStyles.light(fontColor: AppColors.color.kBlack002),),
        Sizes.s9.horizontalSpace,
        Text("(30+)", style: AppStyles.light(
          fontColor: AppColors.color.kGrey012, 
          fontWeight: AppFontWeights.regularWeight),
        ),
        Sizes.s9.horizontalSpace,
        Text("المراجعه", style: AppStyles.light(
          fontColor: AppColors.color.kGreen001, 
          fontWeight: AppFontWeights.boldWeight),
        ),
      ],
    );
  }
}