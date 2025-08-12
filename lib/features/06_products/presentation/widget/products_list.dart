import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/error_widget.dart';
import '../../../../core/widgets/listview_builder.dart';
import '../../../03_home/domain/usecases/fetch_fruit_usecase.dart';
import 'product_list_shimmer.dart';
import 'product_widget.dart';

class FruitsProductsListWidget extends ConsumerWidget
{
  const FruitsProductsListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final fruitsAsync = ref.watch(fetchFruitsUsecaseProvider);
    return fruitsAsync.when(
      data: (fruit) => CustomListviewBuilder(
          itemCount: fruit.length, 
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index)
          {
            final fruits = fruit[index];
            return FruitsProductsWidget(
              imgUrl: fruits.imgUrl,
              title: fruits.name,
            );
          },
          separatorBuilder: (_, _) => Sizes.s9.horizontalSpace,
        ), 
      error: (error, stackTrace) => CustomErrorWidget(error: error), 
      loading: () => SizedBox(height: 89.h, child: const FruitsProductsListShimmer()),
    );
  }
}