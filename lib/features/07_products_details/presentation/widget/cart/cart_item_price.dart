import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class CartItemPriceWidget extends StatelessWidget
{
  const CartItemPriceWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children:
      [
        Sizes.s6.verticalSpace,
        GestureDetector(
          onTap: () {log('Trash...');},
          child: const DeleteImgWidget()
        ),
        const Spacer(),
        const ItemPriceTextWidget(),
        Sizes.s8.verticalSpace,
      ],
    );
  }
}


class DeleteImgWidget extends StatelessWidget
{
  const DeleteImgWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return SvgPicture.asset(AppAssets.icons.trash);
  }
}


class ItemPriceTextWidget extends StatelessWidget
{
  const ItemPriceTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text('60 جنيه ', style: AppStyles.bold(fontColor: AppColors.color.kOrange001),);
  }
}

