import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FruitPackImageWidget extends StatelessWidget
{
  const FruitPackImageWidget({super.key, this.bottom, this.left, this.right, this.top, required this.img});

  final double? bottom;
  final double? left;
  final double? right;
  final double? top;
  final String img;

  @override
  Widget build(BuildContext context)
  {
    return Positioned(
      bottom: bottom ?? 0, left: left ?? 60.w, right: right ?? 60.w, top: top ?? 240.h,
      child: SvgPicture.asset(img,),
    );
  }
}