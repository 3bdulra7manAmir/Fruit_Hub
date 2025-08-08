import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/extensions/margin.dart';
import '../../../../../core/widgets/popers/modal_bottom_sheet.dart';
import 'filter_by_text.dart';
import 'filtration_button.dart';
import 'price_filter_text.dart';
import 'price_limits.dart';
import 'price_slider.dart';

void priceFilterSheet(BuildContext context)
{
  customAppBottomSheet(
    context: context, 
    builder: (context)
    {
      return Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children:
        [
          Sizes.s25.verticalSpace,
          const CustomModalSheetDragger(),
          Sizes.s32.verticalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              FilterProductsByWidget(title: S.current.filterBy,),
              Sizes.s19.verticalSpace,
              const PriceFilterTextWidget(),
              Sizes.s16.verticalSpace,
              const PriceLimitsWidget(),
              Sizes.s16.verticalSpace,
              const PriceSliderWidget(),
              Sizes.s16.verticalSpace,
              const PriceFiltrationButtonWidget(),
              Sizes.s32.verticalSpace,
            ],
          ).marginSymmetric(horizontal: 20.w),
        ],
      );
    },
  );
}