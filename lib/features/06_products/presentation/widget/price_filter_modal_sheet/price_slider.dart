import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../controllers/slider_line_controller.dart';

// class PriceSliderWidget extends StatefulWidget
// {
//   const PriceSliderWidget({super.key});

//   @override
//   State<PriceSliderWidget> createState() => _PriceSliderWidgetState();
// }

// class _PriceSliderWidgetState extends State<PriceSliderWidget>
// {
//   RangeValues _currentRangeValues = const RangeValues(0, 200);

//   @override
//   Widget build(BuildContext context)
//   {
//     return RangeSlider(
//       values: _currentRangeValues,
//       activeColor: AppColors.color.kGreen001,
//       inactiveColor: AppColors.color.kGrey011,
//       max: 1000,
//       labels: RangeLabels(
//         _currentRangeValues.start.round().toString(),
//         _currentRangeValues.end.round().toString(),
//       ),
//       onChanged: (RangeValues values)
//       {
//         setState(()
//         {
//           _currentRangeValues = values;
//         });
//       },
//     );
//   }
// }

class PriceSliderWidget extends StatelessWidget
{
  const PriceSliderWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        valueIndicatorColor: AppColors.color.kTransparent,
        //showValueIndicator: ShowValueIndicator.always,
        valueIndicatorTextStyle: AppStyles.extraLight(fontColor: AppColors.color.kGreen001,),
        tickMarkShape: SliderTickMarkShape.noTickMark,
      ),
      child: Consumer(
        builder: (_, ref, _)
        {
          final range = ref.watch(priceSliderProvider);
          final notifier = ref.read(priceSliderProvider.notifier);
          return RangeSlider(
            values: range,
            max: 1000,
            activeColor: AppColors.color.kGreen001,
            inactiveColor: AppColors.color.kGrey011,
            labels: RangeLabels(range.start.round().toString(), range.end.round().toString(),),
            onChanged: notifier.update,
          );
        },
      ),
    );
  }
}
