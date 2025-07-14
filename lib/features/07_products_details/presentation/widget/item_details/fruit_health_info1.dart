import 'package:flutter/widgets.dart';

import '../../../../../core/constants/app_images.dart';
import 'fruit_health_info_card.dart';

class FruitHealthInfo1Widget extends StatelessWidget
{
  const FruitHealthInfo1Widget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return FruitHealthInfoCardWidget(
      title: "عام",
      subTitle: "الصلاحيه",
      img: AppAssets.icons.calendarBlue,
    );
  }
}