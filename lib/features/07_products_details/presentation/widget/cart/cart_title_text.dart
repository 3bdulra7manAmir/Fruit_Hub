import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/extensions/numbers_and_dates.dart';
import '../../controllers/cart_item_controller.dart';


class CartTitleWidget extends ConsumerWidget 
{
  const CartTitleWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) 
  {    
    final cartItemsTotal = ref.read(cartItemsProvider.notifier);
    ref.watch(cartItemsProvider);
    return Container(
      padding: AppPadding.symmetric.xSmall,
      height: 41.h, width: 375.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: AppColors.color.kGreen006,),
      child: Text(S.current.cartProductsCount(cartItemsTotal.totalItemsCount().toString().localizedNumbers(ref)!,),
        style: AppStyles.extraLight(fontColor: AppColors.color.kGreen011, fontWeight: AppFontWeights.regularWeight,),
      ),
    );
  }
}
