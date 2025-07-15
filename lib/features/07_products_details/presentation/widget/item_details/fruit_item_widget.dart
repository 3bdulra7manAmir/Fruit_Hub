import 'dart:developer';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_images.dart';
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
          top: 32.h, right: 16.w,
          child: GestureDetector(
            onTap: backButtonOnTap,
            child: SvgPicture.asset(AppAssets.icons.rightBlackArrow),
          ),
        ),
        Image.asset(AppAssets.imgs.watermelonV2,),
      ],
    );
  }

  void backButtonOnTap()
  {
    log("Poping has been Pressed...");
    try
    {
      log("Poping Back...");
      AppRouter.router.pop();
    } 
    on Exception catch (e, stack)
    {
      log("Error: $e,, Stack: $stack");
    }
  }
}