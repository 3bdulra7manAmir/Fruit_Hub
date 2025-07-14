import 'package:e_commerce_app/config/theme/color_manager/colors.dart';
import 'package:e_commerce_app/config/theme/font_manager/font_weights.dart';
import 'package:e_commerce_app/core/constants/app_styles.dart';
import 'package:flutter/widgets.dart';

class FruitItemDescriptionWidget extends StatelessWidget
{
  const FruitItemDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Text("ينتمي إلى الفصيلة القرعية ولثمرته لُب حلو المذاق وقابل للأكل، وبحسب علم النبات فهي تعتبر ثمار لبيّة، تستعمل لفظة البطيخ للإشارة إلى النبات نفسه أو إلى الثمرة تحديداً",
    style: AppStyles.light(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey013),
    maxLines: 3,
    );
  }
}