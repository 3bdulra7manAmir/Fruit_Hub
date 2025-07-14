import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/paint_clipper.dart';

class ClippedBackgroundWidget extends StatelessWidget
{
  const ClippedBackgroundWidget({super.key, this.clipper, required this.color, this.height,});

  final CustomClipper<Path>? clipper;
  final Color color;
  final double? height;

  @override
  Widget build(BuildContext context)
  {
    return ClipPath(
      clipper: clipper ?? OnBoardingWaveClipper(),
      child: Container(height: height ?? 400.h, color: color,),
    );
  }
}