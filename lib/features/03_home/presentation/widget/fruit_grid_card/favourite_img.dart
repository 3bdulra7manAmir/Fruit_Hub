import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/theme_controller/theme_controller.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/utils/logger/app_logger.dart';
import '../../../../../core/widgets/circular_indicator.dart';
import '../../controller/favourite_controller.dart';

class FavouriteWidget extends ConsumerWidget {
  const FavouriteWidget({super.key, required this.fruitId});
  final String fruitId;
  //OnTap

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final favourites = ref.watch(favouriteProvider);
    final color = ref.watch(themeProvider) == ThemeMode.dark ? AppColors.color.kBlack001 : null;

    return favourites.when(
      data: (ids)
      {
        final isFav = ids.contains(fruitId);
        final img = isFav ? AppAssets.icons.hartFilledWhite : AppAssets.icons.hartEmptyWhite;
        return GestureDetector(
          onTap: ()
          {
            AppLogger.debug('Favourite pressed for $fruitId');
            ref.read(favouriteProvider.notifier).toggleFavourite(fruitId);
          },
          child: Image.asset(img, color: color, width: 16.w, height: 16.h),
        );
      },
      loading: () => const CustomLoadingIndicator(),
      error: (err, stack) => Icon(Icons.error, size: 16.w),
    );
  }
}
