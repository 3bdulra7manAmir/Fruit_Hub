import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/extensions/margin.dart';
import '../../../../../core/widgets/popers/modal_bottom_sheet.dart';
import '../price_filter_modal_sheet/filter_by_text.dart';
import 'radio_list.dart';
import 'sort_button.dart';


void arrangementFilterSheet(context) {
  customAppBottomSheet(
    context: context, 
    builder: (context)
    {
      return Column(
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
              FilterProductsByWidget(title: S.current.sortBy,),
              Sizes.s14.verticalSpace,
              const ArrangementRadioList(),
              Sizes.s11.verticalSpace,
              const AlpahpetFiltrationButtonWidget(),
              Sizes.s32.verticalSpace,
            ],
          ).marginSymmetric(horizontal: 20.w),
        ],
      );
    },
  );
}