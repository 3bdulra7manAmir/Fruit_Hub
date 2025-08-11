import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/listview_builder.dart';
import '../../controller/payment/payment_card_selection_controller.dart';
import 'payment_option_card.dart';

class PaymentOptionCardsList extends ConsumerWidget
{
  const PaymentOptionCardsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final selectedIndex = ref.watch(paymentCardSelectionProvider);
    final controller = ref.read(paymentCardSelectionProvider.notifier);
    return CustomListviewBuilder(
      itemCount: 2,
      separatorBuilder: (_, index) => Sizes.s8.verticalSpace,
      itemBuilder: (_, index) {
        return InkWell(
          borderRadius: AppRadiuses.circular.xXXXXSmall,
          onTap: () => controller.selectCard(index),
          child: PaymentOptionCard(isSelected: selectedIndex == index),
        );
      },
    );
  }
}
