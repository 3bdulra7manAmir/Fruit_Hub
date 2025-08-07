import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class FruitGridPriceWidget extends StatelessWidget
{
  const FruitGridPriceWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children:
      [
        Text('بطيخ', style: AppStyles.extraLight(fontColor: AppColors.color.kBlack001,), maxLines: 1,),
        Sizes.s4.verticalSpace,
        Row(
          children:
          [
            Flexible(
              child: Text('20${S.current.le} ', style: AppStyles.extraLight(fontColor: AppColors.color.kOrange001,), maxLines: 1,),
            ),
            Flexible(
              child: Text('/ ${S.current.kiloG}', style: AppStyles.extraLight(fontColor: AppColors.color.kOrange002,), maxLines: 1,),
            ),
          ],
        ),
      ],
    );
  }
}

