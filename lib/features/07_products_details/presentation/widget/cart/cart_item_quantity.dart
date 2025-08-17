import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/extensions/numbers_and_dates.dart';
import '../fruit_quantity.dart';

class CartItemQuantityWidget extends StatelessWidget
{
  const CartItemQuantityWidget({super.key, required this.itemName, required this.itemWeight, required this.itemId,});

  final String itemName;
  final String itemWeight;
  final String itemId;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Sizes.s6.verticalSpace,
        Text(itemName, style: AppStyles.extraLight(
          fontWeight: AppFontWeights.boldWeight, 
          fontColor: AppColors.color.kBlack003),
        ),
        Sizes.s4.verticalSpace,
        Consumer(
          builder: (_, ref, _)
          {
            return Text('${(double.tryParse(itemWeight))!.toCleanString().localizedNumbers(ref)} ${S.current.kiloG}', style: AppStyles.extraLight(
              fontWeight: AppFontWeights.regularWeight, 
              fontColor: AppColors.color.kOrange001),
            );
          },
        ),
        Sizes.s10.verticalSpace,
        FruitQuantityChanger(fruitId: itemId),
      ],
    );
  }
}

