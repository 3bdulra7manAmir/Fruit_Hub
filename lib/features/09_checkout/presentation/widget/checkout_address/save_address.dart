import 'package:e_commerce_app/core/constants/app_styles.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../controller/save_address_controller.dart';

class SaveAddressWidget extends StatelessWidget
{
  const SaveAddressWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [

        KeepAddressSwitchButtonWidget(),
        Sizes.s8.horizontalSpace,
        KeepAddressTextWidget(),
      ],
    );
  }
}

class KeepAddressTextWidget extends StatelessWidget
{
  const KeepAddressTextWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Text("حفظ العنوان", style: AppStyles.extraLight(fontColor: AppColors.color.kGrey002),);
  }
}


class KeepAddressSwitchButtonWidget extends ConsumerWidget
{
  const KeepAddressSwitchButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final isSwitched = ref.watch(toggleSwitchProvider);

    // iOS: full pill shape, Android: less rounded
    final BorderRadius borderRadius = AppRadiuses.circular.medium;

    final double width = 44.w;
    final double height = 24.h;
    final double circleSize = 20.w;
    final EdgeInsetsGeometry padding = EdgeInsets.all(2.w);

    return GestureDetector(
      onTap: ()
      {
        log(!isSwitched ? "True" : "False");
        ref.read(toggleSwitchProvider.notifier).toggle();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: isSwitched ? AppColors.color.kGreen001 : Colors.grey.shade300,
          borderRadius: borderRadius,
        ),
        alignment: isSwitched ? Alignment.centerRight : Alignment.centerLeft,
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