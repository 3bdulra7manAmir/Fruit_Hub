
import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';

class UserAppBar extends StatelessWidget implements PreferredSizeWidget
{
  const UserAppBar({super.key, this.toolbarHeight});

  final double? toolbarHeight;

  @override
  Widget build(BuildContext context)
  {
    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: 16.w,
      title: Row(
        children:
        [
          UserImgWidget(),
          Sizes.size11.horizontalSpace,
          UserNameWidget(),
          Spacer(),
          BillWidget(),
        ],
      ),
    ).marginDirectional(top: 11.h);
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + (toolbarHeight ?? 12.h));
}


class UserImgWidget extends StatelessWidget
{
  const UserImgWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 44.h, width: 44.w,
      decoration: BoxDecoration(
        color: AppColors.color.kGreen003,
        borderRadius: AppRadiuses.circular.xLarge,
        image: DecorationImage(image: AssetImage(AppAssets.imgs.user), fit: BoxFit.contain,)
      ),
    );
  }
}


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
        Text("أحمد مصطفي", style: AppStyles.bold(fontColor: AppColors.color.kBlack001)),
      ],
    );
  }
}


class BillWidget extends StatelessWidget
{
  const BillWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 34.h, width: 34.w,
      decoration: BoxDecoration(color: AppColors.color.kGreen005, borderRadius: AppRadiuses.circular.xLarge,),
      child: Stack(
        children:
        [
          Center(child: SvgPicture.asset(AppAssets.icons.billGreen,)),
          Positioned(
            bottom: 21.h,  right: 16, 
            child: SvgPicture.asset(AppAssets.icons.billRedDot)
          ),
        ],
      ),
    );
  }
}