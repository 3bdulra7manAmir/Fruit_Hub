import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';


class ArrangementRadioCard<T> extends StatelessWidget {
  const ArrangementRadioCard({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  final T value;
  final T? groupValue;
  final ValueChanged<T?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FiltrationOptionRadioWidget<T>(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        SizedBox(width: 8.w),
        FiltrationOptionTextWidget<T>(value: value),
      ],
    );
  }
}



class FiltrationOptionRadioWidget<T> extends StatelessWidget {
  const FiltrationOptionRadioWidget({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  final T value;
  final T? groupValue;
  final ValueChanged<T?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Radio<T>(
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
    );
  }
}


class FiltrationOptionTextWidget<T> extends StatelessWidget {
  const FiltrationOptionTextWidget({super.key, required this.value});
  final T value;

  @override
  Widget build(BuildContext context) {
    return Text(
      value.toString().split('.').last,
      style: AppStyles.extraLight(
        fontWeight: AppFontWeights.boldWeight,
        fontColor: AppColors.color.kBlack001,
      ),
    );
  }
}