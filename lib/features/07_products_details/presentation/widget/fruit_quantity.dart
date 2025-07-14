import 'dart:developer';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../03_home/presentation/widget/fruit_grid_card/add_button.dart';

class FruitNeededQuantityWidget extends StatelessWidget
{
  const FruitNeededQuantityWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      [
        FruitQuantityPriceWidget(),
        FruitQuantityChanger()
      ],
    );
  }
}


class FruitQuantityChanger extends StatelessWidget
{
  const FruitQuantityChanger({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        GestureDetector(
          onTap: () {log("Add has been Pressed...");},
          child: FruitAddButtonWidget(),
        ),

        Sizes.s16.horizontalSpace,
        Text("4", style: AppStyles.bold(fontColor: AppColors.color.kBlack001),),

        Sizes.s16.horizontalSpace,
        GestureDetector(
          onTap: () {log("Subtract has been Pressed...");},
          child: SvgPicture.asset(AppAssets.icons.subtract),
        ),
      ],
    );
  }
}


class FruitQuantityPriceWidget extends StatelessWidget
{
  const FruitQuantityPriceWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text("بطيخ", style: AppStyles.bold(fontColor: AppColors.color.kBlack001),),
        Sizes.s4.verticalSpace,
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(style: AppStyles.light(fontWeight: AppFontWeights.boldWeight,),
          children:
          [
            TextSpan(text: "20جنية", style: AppStyles.light(fontColor: AppColors.color.kOrange001)),
            TextSpan(text: " / ", style: AppStyles.light(fontColor: AppColors.color.kOrange002)),
            TextSpan(text: "الكيلو", style: AppStyles.light(fontColor: AppColors.color.kOrange002)),
          ]
          ),
        ),
      ],
    );
  }
}