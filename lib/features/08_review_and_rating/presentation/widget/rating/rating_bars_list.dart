import 'package:e_commerce_app/core/extensions/widget_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import 'rating_linear_bar.dart';

class RatingBarsListWidget extends StatelessWidget
{
  const RatingBarsListWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: List.generate(5, (index)
      {
        final rating = 5 - index;
        return RatingBarWidget(rating: rating).paddingOnly(bottom: Sizes.s8.h);
      }),
    );
  }
}
