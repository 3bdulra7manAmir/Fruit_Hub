
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';

class WhoWeAre extends StatelessWidget
{
  const WhoWeAre({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(title: S.current.aboutUs),
      body: CustomSingleChild(
        children:
        [
          Sizes.s16.verticalSpace,
          RichText(
            text: TextSpan(style: AppStyles.extraLight(),
              children:
              [
                TextSpan(text: S.current.loremWarning,
                style: AppStyles.extraLight(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey002)),
                const TextSpan(text: '\n'),
                TextSpan(text: S.current.loremWarning1,),
                const TextSpan(text: '\n'),
                TextSpan(text: S.current.loremWarning2,
                style: AppStyles.extraLight(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey002),
                ),
                const TextSpan(text: '\n'),
                TextSpan(text: S.current.loremWarning3,),
                const TextSpan(text: '\n'),
                TextSpan(text: S.current.loremWarning4,),
              ]
            ),
          ),
        ]
      ),
    );
  }
}