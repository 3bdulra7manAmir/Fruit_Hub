import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_images.dart';

class NotificationGreenDotWidget extends StatelessWidget
{
  const NotificationGreenDotWidget({super.key, required this.isGreenDot});
  final bool isGreenDot;

  @override
  Widget build(BuildContext context)
  {
    return isGreenDot ?
    Positioned(
      right: 22.w, top: (-3.4).h,
      child: SvgPicture.asset(AppAssets.icons.greenDot)
    ) : const SizedBox.shrink();
  }
}