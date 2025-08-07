import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/checkbox.dart';
import '../../controller/register/checkbox_controller.dart';

class RegisterTermsWidget extends ConsumerWidget
{
  const RegisterTermsWidget({super.key});

  @override
Widget build(BuildContext context, WidgetRef ref)
{
  final isChecked = ref.watch(registerCheckboxProvider);
  return Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    children:
    [
      CustomCheckbox(
        value: isChecked,
        onChanged: (_) => ref.read(registerCheckboxProvider.notifier).toggle(),
      ),
      //Sizes.s12.horizontalSpace,
      const RegisterTermsTextWidget(),
    ],
  );
}
}


class RegisterTermsTextWidget extends StatelessWidget
{
  const RegisterTermsTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Expanded(
      child: Text.rich(
        TextSpan(
          text: S.current.byCreatingAccountYouAgree, 
          style: AppStyles.extraLight(fontColor: AppColors.color.kGrey002),
        children:
        [
          TextSpan(
            text: S.current.ourTermsAndConditions, 
            style: AppStyles.extraLight(fontColor: AppColors.color.kGreen004),
          ),
        ],
      ), maxLines: 2, overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
