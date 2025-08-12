import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/listview_builder.dart';
import '../../../../core/widgets/shimmer.dart';

class FruitsProductsListShimmer extends ConsumerWidget
{
  const FruitsProductsListShimmer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return CustomListviewBuilder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      separatorBuilder: (_, _) => Sizes.s9.horizontalSpace,
      itemBuilder: (_, _) => Column(
        children:
        [
          // Circular Fruit IMG
          CustomShimmer(
            width: 64.w,
            height: 64.h,
            borderRadius: AppRadiuses.circular.large,
            baseColor: AppColors.color.kGrey008,
            highlightColor: AppColors.color.kGrey005,
          ),
          Sizes.s2.verticalSpace,
          // Fruit Name or Title
          CustomShimmer(
            width: 50.w,
            height: 12.h,
            baseColor: AppColors.color.kGrey005,
            highlightColor: AppColors.color.kGrey002,
          ),
        ],
      ),
    );
  }
}
