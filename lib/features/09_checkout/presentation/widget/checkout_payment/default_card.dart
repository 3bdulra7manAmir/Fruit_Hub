import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/checkbox.dart';
import '../../controller/payment/checkbox_controller.dart';

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
        CustomCheckbox(value: isChecked, onChanged: (_) => ref.read(keepCardCheckboxProvider.notifier).toggle(),),
        Sizes.s16.horizontalSpace,
        const MarkAsDefaultCardTextWidget()
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
    return Text(S.current.makeDefaultCard, style: AppStyles.extraLight(fontColor: AppColors.color.kGrey006),);
  }
}