import 'dart:developer';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/localization/localization_controller.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/extensions/transform.dart';
import '../../../../../core/widgets/appbar/default_appbar/back_button.dart';
import '../../../../../core/widgets/paint_clipper.dart';
import '../../../../01_onboarding/presentation/widget/onboard_welcome/clipped_background.dart';


class FruitItemWidget extends StatelessWidget
{
  const FruitItemWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      alignment: Alignment.center,
      children:
      [
        ClippedBackgroundWidget(
          height: 350.h,
          clipper: BottomArcClipper(), 
          color: AppColors.color.kGrey008,
        ),
        Positioned(
          top: 30.h, right: 16.w,
          child: GestureDetector(
            onTap: backButtonOnTap,
            child: SizedBox(
              width: 44.w, height: 44.h,
              child:  Consumer(
                builder: (_, ref, _) {
                  final locale = ref.watch(localizationProvider);
                  return const BackButtonWidget().flipForRtl(locale);
                },
              )
            ),
          ),
        ),
        Image.asset(AppAssets.imgs.watermelonV2,),
      ],
    );
  }

  void backButtonOnTap()
  {
    log('Poping has been Pressed...');
    try
    {
      log('Poping Back...');
      AppRouter.router.pop();
    } 
    catch (error, stack)
    {
      log('Error: $error,, Stack: $stack');
    }
  }
}