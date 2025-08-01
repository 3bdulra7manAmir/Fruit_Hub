import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/i18n/generated/l10n.dart';
import '../../../config/router/app_router.dart';
import '../../../config/theme/color_manager/colors.dart';
import '../../constants/app_borders.dart';
import '../../constants/app_images.dart';
import '../../constants/app_sizes.dart';
import '../../constants/app_styles.dart';
import '../../extensions/widget_margin.dart';
import '../buttons/button.dart';
import 'dialog.dart';

class PopScopeWidget extends StatelessWidget
{
  const PopScopeWidget({
    super.key,
    required this.child,
    this.onWillPop,
  });

  final Widget child;
  final Future<bool> Function()? onWillPop;

  @override
  Widget build(BuildContext context)
  {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async
      {
        if (didPop)
        {
          log('Screen Closed');
          return;
        }
        final allowPop = await (onWillPop?.call() ?? _defaultBackHandler(context));
        if (allowPop)
        {
          if (AppRouter.router.canPop())
          {
            AppRouter.router.pop();
          }
          else
          {
            final shouldExit = await _defaultBackHandler(context);
            if (shouldExit)
            {
              await Navigator.of(context).maybePop();
            }
          }
        }
      },
      child: child,
    );
  }

  Future<bool> _defaultBackHandler(BuildContext context) async
  {
    final result = await customAppDialog(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: AppRadiuses.circular.xXXXXSmall),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Sizes.s16.verticalSpace,
          GestureDetector(
            onTap: ()
            {
              log('PopScope Canceled');
              AppRouter.router.pop();
            },
            child: SvgPicture.asset(AppAssets.icons.removeBlack)
          ),
          Sizes.s12.verticalSpace,
          Text(S.current.logoutConfirmation, style: AppStyles.bold(fontColor: AppColors.color.kBlack001),),
          Sizes.s29.verticalSpace,
          Row(
            children:
            [
              Expanded(child: CustomButton(
                onPressed: ()
                {
                  log('Exit App');
                  SystemNavigator.pop();
                },
                text: S.current.confirm, width: 146.w, height: 48.h,
                )),
              Sizes.s8.horizontalSpace,
              Expanded(child: CustomButton(
                onPressed: ()
                {
                  AppRouter.router.pop();
                },
                text: S.current.noThanks, width: 146.w, height: 48.h,
                textStyle: AppStyles.bold(fontColor: AppColors.color.kGreen001),
                backgroundColor: AppColors.color.kWhite001,
                borderColor: AppColors.color.kGreen001,
                )),
            ],
          )
        ],
      ).marginSymmetric(horizontal: 20.w)
    );
    return result ?? false;
  }
}
