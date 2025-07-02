import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/widgets/custom_paint_rrect.dart';

class CurvedTopBackground extends StatelessWidget
{
  const CurvedTopBackground({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ClipPath(
      clipper: WaveClipper(),
      child: Container(height: 544.h, color: AppColors.color.kYellow001,
      ),
    );
  }
}