import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/theme/color_manager/colors.dart';
import '../../constants/app_images.dart';

class FruitAddButton extends StatelessWidget
{
  const FruitAddButton({
    super.key, 
    this.color, 
    this.img, 
    required this.onTap});

  final void Function() onTap;
  final Color? color;
  final String? img;

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 36.w, height: 36.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color ?? AppColors.color.kGreen001,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(img ?? AppAssets.icons.crossWhite,  fit: BoxFit.scaleDown,
          colorFilter: ColorFilter.mode(color ?? AppColors.color.kWhite001, BlendMode.srcIn),
        ),
      ),
    );
  }
}

