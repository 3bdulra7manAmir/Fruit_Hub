import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/paint_clipper.dart';

class ClippedColorWidget extends StatelessWidget
{
  const ClippedColorWidget({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context)
  {
    return ClipPath(
      clipper: OnBoardingWaveClipper(),
      child: Container(height: 400.h, color: color,),
    );
  }
}