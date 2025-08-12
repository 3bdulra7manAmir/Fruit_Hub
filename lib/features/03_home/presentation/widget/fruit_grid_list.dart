import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/router/app_router.dart';
import '../../../../config/router/routes_extras.dart';
import '../../../../core/widgets/error_widget.dart';
import '../../../../core/widgets/gridview_builder.dart';
import '../../domain/usecases/fetch_fruit_usecase.dart';
import 'fruit_grid_card/fruit_card_body.dart';
import 'fruit_grid_list_shimmer.dart';

class FruitGridListWidget extends ConsumerWidget
{
  const FruitGridListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final fruitsAsync = ref.watch(fetchFruitsUsecaseProvider);
    return fruitsAsync.when(
      data: (fruits)
      {
        return CustomGridbuilder(
          itemCount: fruits.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,                              //  controls how many items per row
            mainAxisSpacing: (8.0).h,                       // vertical spacing
            crossAxisSpacing: (16.0).w,                     // horizontal spacing
            childAspectRatio: (163.w / 214.h),              // ≈ 0.7617
          ),
          itemBuilder: (_, index)
          {
            final fruit = fruits[index];
            return GestureDetector(
              onTap: ()
              {
                log('Fruit Details has been Entered...');
                AppRouter.router.pushFruitDetails(fruitDetails: fruits[index]);
              },
              child: FruitGridCardWidget(fruit: fruit)
            );
          },
        );
      },
      loading: () => const FruitGridListShimmer(),
      error: (error, _) => CustomErrorWidget(error: error),
    );
  }
}