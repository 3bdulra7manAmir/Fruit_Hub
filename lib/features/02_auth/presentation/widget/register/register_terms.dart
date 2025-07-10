import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../controller/register/checkbox_controller.dart';

class RegisterTermsWidget extends ConsumerWidget
{
  const RegisterTermsWidget({super.key});

  @override
Widget build(BuildContext context, WidgetRef ref)
{
  final isChecked = ref.watch(checkboxNotifierProvider);
  return Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    children:
    [
      Checkbox(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
        side: BorderSide(color: AppColors.color.kGrey005, width: 1.5.w),
        fillColor: WidgetStateProperty.resolveWith((states)
        {
          if (states.contains(WidgetState.selected))
          {
            return AppColors.color.kGreen001;
          }
          return null;
        }),
        value: isChecked,
        onChanged: (_) => ref.read(checkboxNotifierProvider.notifier).toggle(),
      ),
      Sizes.s16.horizontalSpace,
      Expanded(
        child: Text.rich(
          TextSpan(
            text: "من خلال إنشاء حساب ، فإنك توافق على ", 
            style: AppStyles.semiBold(fontColor: AppColors.color.kGrey002),
          children:
          [
            TextSpan(
              text: "الشروط والأحكام الخاصة بنا", 
              style: AppStyles.semiBold(fontColor: AppColors.color.kGreen004),
            ),
          ],
        ), maxLines: 3, overflow: TextOverflow.ellipsis,
        ),
      ),
    ],
  );
}
}
