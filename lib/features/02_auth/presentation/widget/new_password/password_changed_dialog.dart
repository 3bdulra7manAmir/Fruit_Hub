import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/router/router.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/popers/dialog.dart';

void showSuccessDialog(context)
{
  customAppDialog(
    context: context,
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children:
      [
        Sizes.s50.verticalSpace,
        Stack(
          children:
          [
            SvgPicture.asset(AppAssets.icons.successGreen),
            Positioned(
              bottom: 0, right: 30.h, left: 90.w, top: 25.h,
              child: GestureDetector(
                onTap: () => AppRouter.router.pop(),
                child: SvgPicture.asset(AppAssets.icons.removeBlack),
              ),
            ),
          ],
        ),
        Sizes.s29.verticalSpace,
        Text(
          "تم تغيير الباسورد بنجاح",
          style: AppStyles.bold(fontColor: AppColors.color.kBlack001),
        ),
        Sizes.s50.verticalSpace,
      ],
    )
  );
}