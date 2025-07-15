
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
    context: context,
    isDismissible: isDismissible ?? true,
    isScrollControlled: isScrollControlled ?? true,
    useRootNavigator: useRootNavigator ?? false,
    shape: shape,
    builder: builder,
  );
}


class ModalSheetDragger extends StatelessWidget
{
  const ModalSheetDragger({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 60.w, height: 3.h,
      decoration: BoxDecoration(
        color: AppColors.color.kBlue001,
        borderRadius: AppRadiuses.circular.large,
      ),
    );
  }
}