import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/checkbox.dart';
import '../../controller/checkbox_controller.dart';

class MakeCardAsDeafultWidget extends ConsumerWidget
{
  const MakeCardAsDeafultWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final isChecked = ref.watch(keepCardCheckboxProvider);
    return Row(
      children:
      [
        CustomCheckbox(value: isChecked,
          onChanged: (_) => ref.read(keepCardCheckboxProvider.notifier).toggle(),
        ),
        Sizes.s16.horizontalSpace,
        MarkAsDefaultCardTextWidget()
      ],
    );
  }
}

class MarkAsDefaultCardTextWidget extends StatelessWidget
{
  const MarkAsDefaultCardTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text("جعل البطاقة افتراضية", style: AppStyles.extraLight(fontColor: AppColors.color.kGrey006),);
  }
}