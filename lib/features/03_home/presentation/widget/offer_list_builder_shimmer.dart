import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/listview_builder.dart';
import '../../../../core/widgets/shimmer.dart';

class OffersListShimmer extends ConsumerWidget
{
  const OffersListShimmer({super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return CustomListviewBuilder(
      itemCount: 3,
      separatorBuilder: (_, _) => Sizes.s8.horizontalSpace,
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, _)
      {
        return Card(
          shape: RoundedRectangleBorder(borderRadius: AppRadiuses.circular.xXXXXSmall,),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children:
            [
              // BackGround IMG Shimmer
              CustomShimmer(
                width: 175.w,
                height: 158.h,
                baseColor: AppColors.color.kGrey002,
                highlightColor: AppColors.color.kGrey003,
              ),

              // Text And Button Shimmer
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomShimmer(
                  width: 175.w,
                  height: 80.h,
                  baseColor: AppColors.color.kGrey004,
                  highlightColor: AppColors.color.kGrey006,
                  borderRadius: BorderRadius.only(
                    bottomLeft: AppRadiuses.circular.xXXXXSmall.topLeft,
                    bottomRight: AppRadiuses.circular.xXXXXSmall.topRight,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
