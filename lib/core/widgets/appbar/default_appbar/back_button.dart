import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/i18n/localization/localization_controller.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../constants/app_images.dart';
import '../../../extensions/transform.dart';

class BackButtonWidget extends ConsumerWidget
  {
    const BackButtonWidget({super.key});
  
    @override
    Widget build(BuildContext context, WidgetRef ref)
    {
      return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.color.kWhite004,
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.color.kGrey014,),
        ),
        child: SvgPicture.asset(AppAssets.icons.leftBlackArrow).flipForLtr(ref.watch(localizationProvider)),
      );
    }
  }


