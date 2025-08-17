import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/router/app_router.dart';
import '../../../../config/router/routes_extras.dart';
import '../../../../core/widgets/gridview_builder.dart';
import '../../../06_products/presentation/controllers/products_filter_controller.dart';
import 'fruit_grid_card/fruit_card_body.dart';
import 'fruit_grid_list_shimmer.dart';

class FruitGridListWidget extends ConsumerWidget {
  const FruitGridListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fruits = ref.watch(productsFilterProvider);

    if (fruits.isEmpty) return const FruitGridListShimmer();

    return CustomGridbuilder(
      itemCount: fruits.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8.h,
        crossAxisSpacing: 16.w,
        childAspectRatio: 163.w / 214.h,
      ),
      itemBuilder: (_, index) {
        final fruit = fruits[index];
        return GestureDetector(
          onTap: () {
            AppRouter.router.pushFruitDetails(fruitEntity: fruit);
          },
          child: FruitGridCardWidget(fruit: fruit),
        );
      },
    );
  }
}
