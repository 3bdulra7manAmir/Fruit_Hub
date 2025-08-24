import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/routes_extras.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/gridview_builder.dart';
import '../../../../03_home/domain/entity/fruit_entity.dart';
import '../../../../03_home/presentation/controller/favourite_controller.dart';
import '../../../../03_home/presentation/widget/fruit_grid_card/fruit_card_body.dart';
import '../../../../03_home/presentation/widget/fruit_grid_list_shimmer.dart';
import '../../../../06_products/presentation/controllers/products_filter_controller.dart';
import 'no_favourits.dart';


class FavouritFruitGridListWidget extends ConsumerWidget
{
  const FavouritFruitGridListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final fruits = ref.watch(productsFilterProvider);
    final favState = ref.watch(favouriteProvider);

    return favState.when(
      data: (favs)
      {
        final favFruits = fruits.where((fruit) => favs.contains(fruit.fruitId)).toList();
        if (favFruits.isEmpty)
        {
          return const NoFavouritsWidget();
        }

        return CustomGridbuilder(
          itemCount: favFruits.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8.h,
            crossAxisSpacing: 16.w,
            childAspectRatio: 163.w / 214.h,
          ),
          itemBuilder: (_, index)
          {
            final fruit = favFruits[index];
            return FavouritFruitGridCardWidget(fruit: fruit);
          },
        );
      },
      loading: () => const FruitGridListShimmer(),
      error: (e, st) => Center(child: Text('Error: $e')),
    );
  }
}


class FavouritFruitGridCardWidget extends StatelessWidget
{
  const FavouritFruitGridCardWidget({super.key, required this.fruit,});

  final FruitEntity fruit;
  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: () => AppRouter.router.pushFruitDetails(fruitEntity: fruit),
      child: FruitGridCard(fruit: fruit),
    );
  }
}
