import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/extensions/margin.dart';
import '../../../../core/widgets/gridview_builder.dart';
import '../../../../core/widgets/shimmer.dart';

class FruitGridListShimmer extends ConsumerWidget
{
  const FruitGridListShimmer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return CustomGridbuilder(
      itemCount: 6,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, mainAxisSpacing: (8.0).h,
        crossAxisSpacing: (16.0).w, childAspectRatio: (163.w / 214.h),
      ),
      itemBuilder: (_, _) => Card(
        color: AppColors.color.kGrey008,
        shape: RoundedRectangleBorder(borderRadius: AppRadiuses.circular.xXXXXSmall,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Sizes.s8.verticalSpace,
            // Favourite icon shimmer
            CustomShimmer(width: 24.w, height: 24.h, 
              baseColor: AppColors.color.kGrey005,
              highlightColor: AppColors.color.kGrey002,
            ),
            Sizes.s5.verticalSpace,
            // Fruit image shimmer
            Expanded(
              child: CustomShimmer(
                width: double.infinity, height: double.infinity, 
                baseColor: AppColors.color.kGrey002,
                highlightColor: AppColors.color.kGrey003,
              ),
            ),
            Sizes.s12.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      // Fruit name shimmer
                      CustomShimmer(width: 80.w, height: 14.h, 
                        baseColor: AppColors.color.kGrey003,
                        highlightColor: AppColors.color.kGrey006,
                      ),
                      Sizes.s4.verticalSpace,
                      // Fruit price shimmer
                      CustomShimmer(width: 50.w, height: 12.h, 
                        baseColor: AppColors.color.kGrey006,
                        highlightColor: AppColors.color.kGrey010
                      ),
                    ],
                  ),
                ),
                // Add button shimmer
                CustomShimmer(width: 32.w, height: 32.h,
                  borderRadius: AppRadiuses.circular.large,
                  baseColor: AppColors.color.kGrey010,
                  highlightColor: AppColors.color.kGrey019,
                ),
              ],
            ),
            Sizes.s20.verticalSpace,
          ],
        ).marginSymmetric(horizontal: 8.w),
      ),
    );
  }
}
