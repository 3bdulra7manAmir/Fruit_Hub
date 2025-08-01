import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../extensions/widget_margin.dart';

class CustomColumn extends StatelessWidget
{
  const CustomColumn({super.key, this.crossAxisAlignment, required this.children, this.isMargin});

  final CrossAxisAlignment? crossAxisAlignment;
  final List<Widget> children;
  final bool? isMargin;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      children: children
    ).marginSymmetric(horizontal: (isMargin ?? true) ? 16.w : 0);
  }
}


class CustomSingleChild extends StatelessWidget
{
  const CustomSingleChild({super.key, this.crossAxisAlignment, required this.children, this.isMargin, this.isOnDrag});

  final bool? isOnDrag;
  final CrossAxisAlignment? crossAxisAlignment;
  final List<Widget> children;
  final bool? isMargin;

  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
      keyboardDismissBehavior: (isOnDrag ?? true) ? ScrollViewKeyboardDismissBehavior.onDrag : null, //Edit
      child: Column(
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        children: children
      ).marginSymmetric(horizontal: (isMargin ?? true) ? 16.w : 0),
    );
  }
}