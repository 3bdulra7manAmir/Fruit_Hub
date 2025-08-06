import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../03_home/presentation/widget/fruit_grid_card/add_button.dart';
import '../../controllers/fruit_item_quantity_controller.dart';

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


class FruitQuantityChanger extends ConsumerWidget
{
  const FruitQuantityChanger({super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Row(
      children:
      [
        GestureDetector(
          onTap: ()
          {
            log('Add has been Pressed...');
            ref.read(fruitItemQuantityProvider.notifier).increment();
          },
          child: FruitAddButtonWidget(
            child: SvgPicture.asset(AppAssets.icons.crossWhite, 
              fit: BoxFit.scaleDown, 
              colorFilter: ColorFilter.mode(AppColors.color.kWhite001, BlendMode.srcIn),
            ),
          ),
        ),

        Sizes.s16.horizontalSpace,
        Text(ref.watch(fruitItemQuantityProvider).toString(), style: AppStyles.bold(fontColor: AppColors.color.kBlack001),),

        Sizes.s16.horizontalSpace,
        GestureDetector(
          onTap: ()
          {
            log('Subtract has been Pressed...');
            ref.read(fruitItemQuantityProvider.notifier).decrement();
          },
          child: FruitAddButtonWidget(
            color: AppColors.color.kWhite002,
            child: SvgPicture.asset(AppAssets.icons.subtract),
          ),
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
        Text('بطيخ', style: AppStyles.bold(fontColor: AppColors.color.kBlack001),),
        Sizes.s4.verticalSpace,
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(style: AppStyles.extraLight(fontWeight: AppFontWeights.boldWeight,),
          children:
          [
            TextSpan(text: '20جنية', style: AppStyles.extraLight(fontColor: AppColors.color.kOrange001)),
            TextSpan(text: ' / ', style: AppStyles.extraLight(fontColor: AppColors.color.kOrange002)),
            TextSpan(text: 'الكيلو', style: AppStyles.extraLight(fontColor: AppColors.color.kOrange002)),
          ]
          ),
        ),
      ],
    );
  }
}