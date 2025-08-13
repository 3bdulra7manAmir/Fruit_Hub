import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/utils/ui/random_color.dart';

class RatingUserImgBody extends StatelessWidget
{
  const RatingUserImgBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      clipBehavior: Clip.none,
      children:
      [
        const RatingUserImgWidget(),
        Positioned(right: -4.w, bottom: 4.h,
          child: const RatingValueHoveredWidget(),),
      ]
    );
  }
}


class RatingUserImgWidget extends StatelessWidget
{
  const RatingUserImgWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 50.w, height: 50.w, alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.circular.large,
        //color: getRandomColor(),
        image: DecorationImage(image: AssetImage(AppAssets.imgs.usercomment))
      ),
    );
  }
}


class RatingValueHoveredWidget extends StatelessWidget
{
  const RatingValueHoveredWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 20.w, height: 20.h, alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.color.kYellow002,
        borderRadius: AppRadiuses.circular.xXSmall,
        //boxShadow: [AppShadowBoxes.userImg],
      ),
      child: Text('5.0', style: AppStyles.light(),)
    );
  }
}