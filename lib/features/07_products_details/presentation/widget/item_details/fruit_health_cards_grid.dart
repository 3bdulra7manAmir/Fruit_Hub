import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/widgets/gridview_builder.dart';
import 'fruit_health_info_card.dart';

class FruitHealthGridInfoWidget extends StatelessWidget
{
  const FruitHealthGridInfoWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomGridbuilder(
      itemCount: 4,
      itemBuilder: (_, _) => FruitHealthInfoCardWidget(
        img: AppAssets.icons.calendarBlue,
        title: S.current.general, subTitle: S.current.generalSubTitle,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,             //  controls how many items per row
        mainAxisSpacing: (16.0).h,      // vertical spacing
        crossAxisSpacing: (16.0).w,    // horizontal spacing
        childAspectRatio: (163.w / 80.h), // 
      ),
    );
  }
}