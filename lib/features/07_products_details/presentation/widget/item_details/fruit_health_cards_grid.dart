import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/error_widget.dart';
import '../../../../../core/widgets/gridview_builder.dart';
import '../../../domain/usecases/fetch_health_info_usecase.dart';
import 'fruit_health_info_card.dart';

class FruitHealthGridInfoWidget extends ConsumerWidget {
  const FruitHealthGridInfoWidget({super.key, required this.fruitId});
  final String fruitId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final healthInfoAsync = ref.watch(fetchHealthInfoUsecaseProvider);

    return healthInfoAsync.when(
      data: (items)
      {
        final filtered = items.where((item) => item.fruitId == fruitId).toList();
        if (filtered.isEmpty)
        {
          return const Text('No health info available');
        }

        return CustomGridbuilder(
          itemCount: filtered.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,             //  controls how many items per row
            mainAxisSpacing: (16.0).h,      // vertical spacing
            crossAxisSpacing: (16.0).w,    // horizontal spacing
            childAspectRatio: (163.w / 80.h), //
          ),
          itemBuilder: (context, index)
          {
            final item = filtered[index];
            return FruitHealthInfoCardWidget(
              fruitId: item.fruitId,
              img: item.cardImg,
              title: item.title,
              subTitle: item.subtitle,
            );
          },
        );
      },
      loading: () => const CircularProgressIndicator(),
      error: (error, st) => CustomErrorWidget(error: error,),
    );
  }
}
