import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/localization/localization_controller.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/listview_builder.dart';
import '../../../../core/widgets/paint_clipper.dart';
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
      itemBuilder: (_, _) => Card(
          shape: RoundedRectangleBorder(borderRadius: AppRadiuses.circular.xXXXXSmall,),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children:
            [
              // BackGround IMG Shimmer
              CustomShimmer(
                width: 175.w, height: 158.h,
                baseColor: AppColors.color.kGrey002,
                highlightColor: AppColors.color.kGrey003,
              ),
              // Text And Button Shimmer
              Consumer(
                builder: (_, ref, _)
                {
                  final CustomClipper<Path>? clipper;
                  if(ref.watch(localizationProvider) == const Locale('en'))
                  {clipper = FlippedOfferWaveClipper();}
                  else
                  {clipper = OfferWaveClipper();}
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipPath(
                      clipper: clipper,
                      child: CustomShimmer(
                        width: 110.w, baseColor: AppColors.color.kGrey004,
                        highlightColor: AppColors.color.kGrey006,
                        borderRadius: AppRadiuses.circular.xXXXXSmall,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
    );
  }
}