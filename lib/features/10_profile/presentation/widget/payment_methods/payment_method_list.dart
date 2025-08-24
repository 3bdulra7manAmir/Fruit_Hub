import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/error_widget.dart';
import '../../../../../core/widgets/listview_builder.dart';
import '../../../domain/usecases/payment_cards_fetch_usecase.dart';
import 'payment_method_card.dart';
import 'payment_method_list_shimmer.dart';

class PaymentMethodsListWidget extends ConsumerWidget
{
  const PaymentMethodsListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final paymentCardsAsync = ref.watch(fetchPaymentCardsUsecaseProvider);
    return paymentCardsAsync.when(
      data: (cards)
      {
        return CustomListviewBuilder(
          itemBuilder: (_, index)
          {
            final cardsInfo = cards[index];
            return PaymentMethodCard(cardNumber: cardsInfo.cardNumber.toString(),);
          },
          separatorBuilder: (_, _) => Sizes.s16.verticalSpace,
          itemCount: cards.length,
        );
      }, 
      error: (error, _) => CustomErrorWidget(error: error),
      loading: () => const PaymentMethodsListShimmer(),
    );
    
  }
}
