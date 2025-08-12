import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/error_widget.dart';
import '../../../../core/widgets/listview_builder.dart';
import '../../domain/usecases/fetch_offers_usecase.dart';
import 'fruit_offers/offers_body.dart';
import 'offer_list_builder_shimmer.dart';

class OffersListWidget extends ConsumerWidget
{
  const OffersListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final offersAsync = ref.watch(fetchOffersUsecaseProvider);
    return offersAsync.when(
      data: (offers) => CustomListviewBuilder(
          itemCount: offers.length,
          separatorBuilder: (_, _) => Sizes.s8.horizontalSpace,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index)
          {
            final offer = offers[index];
            return OffersBody(offer: offer,);
          }, 
      ),
      error: (error, _) => CustomErrorWidget(error: error),
      loading: () => const OffersListShimmer(),
    );
  }
}