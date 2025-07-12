import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomColumn extends StatelessWidget
{
  const CustomColumn({super.key, this.crossAxisAlignment, required this.children});

  final CrossAxisAlignment? crossAxisAlignment;
  final List<Widget> children;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      children: children
    ).marginSymmetric(horizontal: 16.w);
  }
}