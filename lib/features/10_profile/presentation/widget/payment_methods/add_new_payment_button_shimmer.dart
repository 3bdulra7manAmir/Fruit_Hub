import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/widgets/shimmer.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';

class AddNewPaymentButtonShimmer extends StatelessWidget {
  const AddNewPaymentButtonShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomShimmer(
      width: double.infinity,
      height: 50.h, borderRadius: AppRadiuses.circular.small,
      baseColor: AppColors.color.kGrey005,
      highlightColor: AppColors.color.kGrey002,
    );
  }
}
