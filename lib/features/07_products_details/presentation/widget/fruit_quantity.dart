import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/extensions/numbers_and_dates.dart';
import '../../../../core/widgets/buttons/add_button.dart';
import '../controllers/fruit_item_quantity_controller.dart';

class FruitQuantityChanger extends ConsumerWidget
{
  const FruitQuantityChanger({super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Row(
      children:
      [
        FruitAddButton(
          onTap: ()
          {
            log('Add has been Pressed...');
            ref.read(fruitItemQuantityProvider.notifier).increment();
          },
        ),

        Sizes.s16.horizontalSpace,
        Text(ref.watch(fruitItemQuantityProvider).toString().localizedNumbers(ref)!, style: AppStyles.bold(fontColor: AppColors.color.kBlack001),),

        Sizes.s16.horizontalSpace,
        FruitAddButton(
          onTap: ()
          {
            log('Subtract has been Pressed...');
            ref.read(fruitItemQuantityProvider.notifier).decrement();
          },
          color: AppColors.color.kWhite002, 
          img: AppAssets.icons.subtract,
        ),
      ],
    );
  }
}

