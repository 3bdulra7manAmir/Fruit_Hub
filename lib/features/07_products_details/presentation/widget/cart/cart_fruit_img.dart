import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/widgets/cached_network_img.dart';

class CartItemImgWidget extends StatelessWidget
{
  const CartItemImgWidget({super.key, required this.itemImg, });

  final String itemImg;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 73.w, alignment: Alignment.center,
      color: AppColors.color.kGrey008,
      child: CustomCachedNetworkImg(imgUrl: itemImg, fit: BoxFit.contain,),
    );
  }
}

