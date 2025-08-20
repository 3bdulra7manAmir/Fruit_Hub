import 'package:flutter/material.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/router/app_router.dart';
import '../../../../config/router/app_routes.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/utils/logger/app_logger.dart';

class MostSoldWidget extends StatelessWidget
{
  const MostSoldWidget({super.key, required this.isShowMore, required this.title});
  final String title;
  final bool isShowMore;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      [
        Text(title, style: AppStyles.bold(fontColor: AppColors.color.kBlack001),),
        GestureDetector(
          onTap: ()
          {
            AppLogger.debug('More has been Pressed...');
            AppRouter.router.pushNamed(AppRoutes.mostSold);
          },
          child: isShowMore ?
          Text(S.current.more, style: AppStyles.extraLight(
            fontColor: AppColors.color.kGrey002,
            fontWeight: AppFontWeights.regularWeight,
            ),
          ) : const SizedBox.shrink(),
        ),
      ],
    );
  }
}