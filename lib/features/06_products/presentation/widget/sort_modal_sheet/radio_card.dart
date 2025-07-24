import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/extensions/filtration.dart';

enum SingingCharacter { low2Hight, hight2Low, alpha }

class ArrangementRadioCard extends StatelessWidget
{

  const ArrangementRadioCard({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });
  final SingingCharacter value;
  final SingingCharacter? groupValue;
  final ValueChanged<SingingCharacter?> onChanged;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        FiltrationOptionRadioWidget(value: value, groupValue: groupValue, onChanged: onChanged),
        Sizes.s8.horizontalSpace,
        FiltrationOptionTextWidget(value: value),
      ],
    );
  }
}

class FiltrationOptionRadioWidget extends StatelessWidget
{
  const FiltrationOptionRadioWidget({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  final SingingCharacter value;
  final SingingCharacter? groupValue;
  final ValueChanged<SingingCharacter?> onChanged;

  @override
  Widget build(BuildContext context)
  {
    return Radio<SingingCharacter>(
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
    );
  }
}


class FiltrationOptionTextWidget extends StatelessWidget
{
  const FiltrationOptionTextWidget({super.key,required this.value,});
  final SingingCharacter value;

  @override
  Widget build(BuildContext context)
  {
    return Text(value.title, style: AppStyles.extraLight(
      fontWeight: AppFontWeights.boldWeight,
      fontColor: AppColors.color.kBlack001,),
    );
  }
}