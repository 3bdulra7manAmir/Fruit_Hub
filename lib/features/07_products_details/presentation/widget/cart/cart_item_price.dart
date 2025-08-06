import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../controllers/cart_items_controller.dart';

class CartItemPriceWidget extends ConsumerWidget
{
  const CartItemPriceWidget({super.key, required this.itemId});
  final int itemId;


  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children:
      [
        Sizes.s6.verticalSpace,
        GestureDetector(
          onTap: () {
            log('Trash...');
            ref.read(cartItemsProvider.notifier).removeItem(itemId);
          },
          child: const TrashImgWidget()
        ),
        const Spacer(),
        const ItemPriceTextWidget(),
        Sizes.s8.verticalSpace,
      ],
    );
  }
}


class TrashImgWidget extends StatelessWidget
{
  const TrashImgWidget({super.key,});

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
    return Text('60 ${S.current.le} ', style: AppStyles.bold(fontColor: AppColors.color.kOrange001),);
  }
}

