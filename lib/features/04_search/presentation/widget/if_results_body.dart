import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/custom_grid_view_builder.dart';
import '../../../03_home/presentation/widget/home/fruit_grid_card/fruit_card_body.dart';

class IfResultsBody extends StatelessWidget
{
  const IfResultsBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Sizes.size16.verticalSpace,
        Text("نتائج البحث ", style: AppStyles.semiBold(
          fontColor: AppColors.color.kGrey002, 
          fontWeight: AppFontWeights.regularWeight),
        ),
        Sizes.size16.verticalSpace,
        FruitFilterGridWidget(),
      ],
    );
  }
}

class FruitFilterGridWidget extends StatelessWidget
{
  const FruitFilterGridWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return CustomGridbuilder(
      itemCount: 1,
      itemBuilder: (context, index) => FruitGridCardWidget(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,             //  controls how many items per row
        mainAxisSpacing: (8.0).h,      // vertical spacing
        crossAxisSpacing: (16.0).w,    // horizontal spacing
        childAspectRatio: (163.w / 214.h), // ≈ 0.7617
      ),
    );
  }
}