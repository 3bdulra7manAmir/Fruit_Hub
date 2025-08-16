import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/circular_indicator.dart';
import '../../../../../core/widgets/error_widget.dart';
import '../../../../../core/widgets/gridview_builder.dart';
import '../../../../03_home/domain/usecases/fetch_fruit_usecase.dart';
import 'fruit_health_info_card.dart';

class FruitHealthGridInfoWidget extends ConsumerWidget
{

  const FruitHealthGridInfoWidget({
    super.key, required this.fruitId,
  });
  final String fruitId;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final fruitsAsync = ref.watch(fetchFruitsUsecaseProvider);
    return fruitsAsync.when(
      data: (fruits)
      {
        final fruit = fruits.firstWhere(
          (f) => f.fruitId == fruitId,
          orElse: () => throw Exception('Fruit not found'),
        );
        return CustomGridbuilder(
          itemCount: fruit.healthInfo.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: (16.0).h,
            crossAxisSpacing: (16.0).w, childAspectRatio: (163.w / 80.h),
          ),
          itemBuilder: (context, index)
          {
            final info = fruit.healthInfo[index];
            return FruitHealthInfoCardWidget(
              img: info.healthCardImg, title: info.healthTitle,
              subTitle: info.healthSubTitle, sideTitle: info.healthSideTitle,
            );
          },
        );
      },
      error: (error, stackTrace) => CustomErrorWidget(error: error),
      loading: () => const CustomLoadingIndicator(),
    );
  }
}
