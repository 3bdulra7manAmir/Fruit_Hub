import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/localization/localization_controller.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/extensions/transform.dart';
import '../../../../../core/utils/logger/app_logger.dart';
import '../../../../../core/widgets/appbar/default_appbar/back_button.dart';
import '../../../../../core/widgets/cached_network_img.dart';
import '../../../../../core/widgets/paint_clipper.dart';
import '../../../../../core/widgets/shimmer.dart';
import '../../../../01_onboarding/presentation/widget/onboard_welcome/clipped_background.dart';


class FruitItemWidget extends StatelessWidget
{
  const FruitItemWidget({super.key, required this.imgUrl});

  final String imgUrl;

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
        
        Positioned(top: 30.h, right: 16.w,
          child: GestureDetector(
            onTap: backButtonOnTap,
            child: SizedBox(width: 44.w, height: 44.h,
              child: Consumer(
                builder: (_, ref, _)
                {
                  final locale = ref.watch(localizationProvider);
                  return const BackButtonWidget().flipForRtl(locale);
                },
              )
            ),
          ),
        ),
        
        CustomCachedNetworkImg(
          imgUrl: imgUrl,
          fit: BoxFit.contain,
          width: 221.w, height: 167.h,
          placeholder: (_, _) => CustomShimmer(
            width: 221.w, height: 167.h,
            baseColor: AppColors.color.kGrey009, highlightColor: AppColors.color.kGrey003,
          ),
        ),
      ],
    );
  }

  void backButtonOnTap()
  {
    AppLogger.debug('Poping has been Pressed...');
    try
    {
      AppLogger.debug('Poping Back...');
      AppRouter.router.pop();
    } 
    catch (error, stack)
    {
      AppLogger.error('Error => ', error: error, stackTrace: stack);
    }
  }
}