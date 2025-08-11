// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/gridview_builder.dart';
import '../../../03_home/presentation/widget/fruit_grid_card/fruit_card_body.dart';

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
        Sizes.s16.verticalSpace,
        Text(S.current.searchResults, style: AppStyles.extraLight(
          fontColor: AppColors.color.kGrey002, 
          fontWeight: AppFontWeights.regularWeight),
        ),
        Sizes.s16.verticalSpace,
        const FruitFilterGridWidget(),
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
    return 
    Container();
    // CustomGridbuilder(
    //   itemCount: 1,
    //   itemBuilder: (context, index) => const FruitGridCardWidget(),
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 2,             //  controls how many items per row
    //     mainAxisSpacing: (8.0).h,      // vertical spacing
    //     crossAxisSpacing: (16.0).w,    // horizontal spacing
    //     childAspectRatio: (163.w / 214.h), // ≈ 0.7617
    //   ),
    //);
  }
}