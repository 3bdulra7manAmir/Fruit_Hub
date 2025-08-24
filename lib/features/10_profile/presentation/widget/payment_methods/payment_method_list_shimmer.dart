import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/listview_builder.dart';
import '../../../../../core/widgets/shimmer.dart';

class PaymentMethodsListShimmer extends StatelessWidget
{
  const PaymentMethodsListShimmer({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      itemCount: 6,
      separatorBuilder: (_, _) => Sizes.s16.verticalSpace,
      itemBuilder: (_, _)
      {
        return CustomShimmer(
          height: 50.h, width: double.infinity,
          borderRadius: AppRadiuses.circular.xXSmall,
          baseColor: AppColors.color.kGrey005,
          highlightColor: AppColors.color.kGrey002,
        );
      },
    );
  }
}
