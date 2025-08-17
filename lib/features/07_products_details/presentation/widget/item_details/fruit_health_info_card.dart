import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/cached_network_img.dart';

class FruitHealthInfoCardWidget extends ConsumerWidget
{
  const FruitHealthInfoCardWidget({
    super.key,
    required this.title, 
    this.sideTitle,
    required this.subTitle,
    required this.img, 
  });

  final String title;
  final String? sideTitle;
  final String subTitle;
  final String img;

  @override
  Widget build(BuildContext context, WidgetRef ref)
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
              Row(
                children:
                [
                  Text(title, style: AppStyles.bold(fontColor: AppColors.color.kGreen007)),
                  Text(' ', style: AppStyles.bold(),),
                  Text(sideTitle ?? '', style: AppStyles.bold(fontColor: AppColors.color.kGrey013),),
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
          [Expanded(child: CustomCachedNetworkImg(imgUrl: img, width: 35.w, height: 35.h, fit: BoxFit.contain,)),],
          if (1.sw <= 427 && 1.sh <= 952)...
          [Sizes.s13.horizontalSpace,]
          else...
          [Sizes.s10.horizontalSpace,],
        ],
      ),
    );
  }
}