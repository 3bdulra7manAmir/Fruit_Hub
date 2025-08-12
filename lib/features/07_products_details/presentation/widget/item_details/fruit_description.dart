import 'package:flutter/widgets.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';

class FruitItemDescriptionWidget extends StatelessWidget
{
  const FruitItemDescriptionWidget({super.key, required this.fruitDescription});
  
  final String fruitDescription;

  @override
  Widget build(BuildContext context)
  {
    return Text(fruitDescription, style: AppStyles.extraLight(
      fontWeight: AppFontWeights.regularWeight, 
        fontColor: AppColors.color.kGrey013
      ), maxLines: 3,
    );
  }
}