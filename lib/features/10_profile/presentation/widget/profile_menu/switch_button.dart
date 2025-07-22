import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../controller/language_controller.dart';

class SwitchButtonWidget extends ConsumerWidget
{
  const SwitchButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final isSwitched = ref.watch(toggleSwitchLanguageProvider);
    final BorderRadius borderRadius = AppRadiuses.circular.medium;
    final double width = 29.w;
    final double height = 17.h;
    final double circleSize = 15.w;
    final EdgeInsetsGeometry padding = EdgeInsets.all(1.w);

    return GestureDetector(
      onTap: () {
        log(!isSwitched ? "True" : "False");
        ref.read(toggleSwitchLanguageProvider.notifier).toggle();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: isSwitched ? AppColors.color.kGreen001 : AppColors.color.kGrey023.withValues(alpha: 0.5),
          borderRadius: borderRadius,
        ),
        alignment: isSwitched ? Alignment.centerLeft : Alignment.centerRight,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          width: circleSize,
          height: circleSize,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow:
            [
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
