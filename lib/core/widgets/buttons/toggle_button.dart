import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../utils/functions/toggle_button.dart';

class SwitchButtonWidget<NotifierT extends ToggleSwitchBase> extends ConsumerWidget {
  const SwitchButtonWidget({
    super.key,
    required this.provider,
    this.borderRadius,
    this.width,
    this.height,
    this.circleSize,
  });

  final dynamic provider;

  final BorderRadius? borderRadius;
  final double? width;
  final double? height;
  final double? circleSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isActive = ref.watch(provider); // النوع هنا dynamic
    final notifier = ref.read(provider.notifier) as ToggleSwitchBase;

    return GestureDetector(
      onTap: () => notifier.toggle(),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: width ?? 29.w,
        height: height ?? 17.h,
        padding: EdgeInsets.all(1.w),
        decoration: BoxDecoration(
          color: isActive ? AppColors.color.kGreen001 : AppColors.color.kGrey023.withAlpha(128),
          borderRadius: borderRadius ?? AppRadiuses.circular.medium,
          border: Border.all(color: AppColors.color.kGrey014),
        ),
        alignment: isActive ? Alignment.centerRight : Alignment.centerLeft,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          width: circleSize ?? 15.w,
          height: circleSize ?? 15.w,
          decoration:  BoxDecoration(
            color: AppColors.color.kWhite001,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(15, 16, 24, 40),
                offset: Offset(0, 1),
                blurRadius: 2,
              ),
              BoxShadow(
                color: Color.fromARGB(26, 16, 24, 40),
                offset: Offset(0, 1),
                blurRadius: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
