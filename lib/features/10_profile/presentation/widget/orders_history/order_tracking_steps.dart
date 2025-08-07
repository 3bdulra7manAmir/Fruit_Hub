import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/popers/modal_bottom_sheet.dart';

class OrderTrackingStepsWidget extends StatelessWidget
{
  const OrderTrackingStepsWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    final steps = [
      const _OrderStepData(title: 'تتبع الطلب', date: '22 مارس , 2024', isCompleted: true),
      const _OrderStepData(title: 'قبول الطلب', date: '22 مارس , 2024', isCompleted: true),
      const _OrderStepData(title: 'تم شحن الطلب', date: '22 مارس , 2024', isCompleted: true),
      const _OrderStepData(title: 'خرج للتوصيل', date: 'قيد الانتظار', isCompleted: false),
      const _OrderStepData(title: 'تم التسليم', date: 'تم التسليم', isCompleted: false),
    ];

    return Column(
      children: List.generate(steps.length, (index) {
        final step = steps[index];
        final isLast = index == steps.length - 1;
        return _TrackingStepItem(
          step: step,
          showLine: !isLast,
        );
      }),
    );
  }
}


class _OrderStepData {

  const _OrderStepData({
    required this.title,
    required this.date,
    required this.isCompleted,
  });
  final String title;
  final String date;
  final bool isCompleted;
}


class _TrackingStepItem extends StatelessWidget
{
  const _TrackingStepItem({required this.step, required this.showLine,});

  final _OrderStepData step;
  final bool showLine;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Sizes.s3.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children:
            [
              Container(
                width: 10.w,
                height: 10.h,
                decoration: BoxDecoration(
                  color: step.isCompleted ? AppColors.color.kGreen001 : AppColors.color.kGrey022,
                  borderRadius: AppRadiuses.circular.large,
                ),
              ),
              if (showLine)
                CustomModalSheetDragger(
                  color: step.isCompleted ? AppColors.color.kGreen009 : AppColors.color.kGrey021,
                  width: 2.w,
                  height: 20.h,
                ),
            ],
          ),
          Sizes.s11.horizontalSpace,
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                Text(step.title, style: AppStyles.extraLight(fontColor: AppColors.color.kBlack001,)),
                Text(step.date, style: AppStyles.extraLight(fontColor: AppColors.color.kGrey002,)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
