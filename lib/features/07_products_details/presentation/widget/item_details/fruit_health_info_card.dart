import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class FruitHealthInfoCardWidget extends StatelessWidget
{
  const FruitHealthInfoCardWidget({
    super.key, 
    required this.title, 
    required this.subTitle, 
    required this.img, 
    this.is2Title = false,
    this.title2});

  final String title;
  final String subTitle;
  final String img;
  final bool? is2Title;
  final String? title2;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.circular.medium,
        border: Border.all(color: AppColors.color.kGrey014)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          if (1.sw <= 427 && 1.sh <= 952)...
          [Sizes.s20.horizontalSpace,]
          else...
          [Sizes.s10.horizontalSpace,],
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              !is2Title! ?
              Text(title, style: AppStyles.bold(fontColor: AppColors.color.kGreen007),)
              : Row(
                children:
                [
                  Text(title2!, style: AppStyles.bold(fontColor: AppColors.color.kGrey013)),
                  Text(' ', style: AppStyles.bold(),),
                  Text(title, style: AppStyles.bold(fontColor: AppColors.color.kGreen007),),
                ],
              ),
              Sizes.s4.verticalSpace, 
              Text(subTitle, style: AppStyles.extraLight(fontColor: AppColors.color.kGrey013),),
            ],
          ),
          Sizes.s16.horizontalSpace,
          if (1.sw < 427 && 1.sh < 952)...
          [const SizedBox.shrink(),]
          else...
          [SvgPicture.asset(img),],
          if (1.sw <= 427 && 1.sh <= 952)...
          [Sizes.s13.horizontalSpace,]
          else...
          [Sizes.s10.horizontalSpace,],
        ],
      ),
    );
  }
}