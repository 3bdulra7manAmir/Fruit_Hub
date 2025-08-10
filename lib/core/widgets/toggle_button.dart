import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../helpers/functions/toggle_button.dart';

class SwitchButtonWidget<T extends AutoDisposeNotifier<bool>> extends ConsumerWidget
{
  const SwitchButtonWidget({
    super.key,
    required this.provider,
    this.borderRadius,
    this.width,
    this.height,
    this.circleSize,
  });

  final AutoDisposeNotifierProvider<T, bool> provider;
  final BorderRadius? borderRadius;
  final double? width;
  final double? height;
  final double? circleSize;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final isActive = ref.watch(provider);
    final BorderRadius effectiveBorderRadius = borderRadius ?? AppRadiuses.circular.medium;
    final double effectiveWidth = width ?? 29.w;
    final double effectiveHeight = height ?? 17.h;
    final double effectiveCircleSize = circleSize ?? 15.w;
    final EdgeInsetsGeometry padding = EdgeInsets.all(1.w);

    return GestureDetector(
      onTap: () => (ref.read(provider.notifier) as ToggleSwitchBase).toggle(),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: effectiveWidth,
        height: effectiveHeight,
        padding: padding,
        decoration: BoxDecoration(
          color: isActive ? AppColors.color.kGreen001 : AppColors.color.kGrey023.withAlpha(128),
          borderRadius: effectiveBorderRadius,
          border: Border.all(color: AppColors.color.kGrey014,),),
        alignment: isActive ? Alignment.centerRight : Alignment.centerLeft,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          width: effectiveCircleSize,
          height: effectiveCircleSize,
          decoration:  BoxDecoration(
            color: AppColors.color.kWhite001,
            shape: BoxShape.circle,
            boxShadow:
            const [
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

