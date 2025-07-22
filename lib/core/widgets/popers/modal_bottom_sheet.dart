
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/theme/color_manager/colors.dart';
import '../../constants/app_borders.dart';

void customAppBottomSheet({
  required BuildContext context,
  bool? isScrollControlled,
  bool? isDismissible,
  bool? useRootNavigator,
  ShapeBorder? shape,
  required WidgetBuilder builder,
}) {
  showModalBottomSheet(
    barrierColor: Colors.transparent,
    context: context,
    isDismissible: isDismissible ?? true,
    isScrollControlled: isScrollControlled ?? true,
    useRootNavigator: useRootNavigator ?? false,
    shape: shape,
    builder: builder,
  );
}


class CustomModalSheetDragger extends StatelessWidget
{
  const CustomModalSheetDragger({super.key, this.color, this.width, this.height, this.borderRadius});

  final Color? color;
  final double? width;
  final double? height;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: width ?? 60.w, height: height ?? 3.h,
      decoration: BoxDecoration(
        color: color ?? AppColors.color.kBlue001,
        borderRadius: borderRadius ?? AppRadiuses.circular.large,
      ),
    );
  }
}