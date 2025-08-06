import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/theme_controller/theme_controller.dart';
import '../../../../../core/constants/app_images.dart';
import '../../controller/favourite_controller.dart';

class FavouriteWidget extends ConsumerWidget {
  const FavouriteWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeProvider) == ThemeMode.dark;
    final img = ref.watch(favouriteImgProvider) ? AppAssets.icons.hartFilledWhite : AppAssets.icons.hartEmptyWhite;
    final color = isDark ? AppColors.color.kBlack001 : null;
    return GestureDetector(
      onTap: () {
        log('Favourite has been pressed...');
        ref.read(favouriteImgProvider.notifier).toggle();
      },
      child: Image.asset(img, color: color, width: 16.w, height: 16.h,),
    );
  }
}
