import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/extensions/widget_padding.dart';
import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/textform_field.dart';
import '../../controller/personal_info/confirm_obscure_controller.dart';

class ConfirmPasswordFieldWidget extends ConsumerWidget
{
  const ConfirmPasswordFieldWidget({super.key, required this.confirmPasswordController});

  final TextEditingController confirmPasswordController;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final obscureProvider = ref.watch(confirmObscurePasswordProvider);
    return CustomTextFormField(
      controller: confirmPasswordController,
      keyboardType: TextInputType.visiblePassword,
      validator: (value) => AppValidation.passwordValidation(value),
      hintText: S.current.confirmNewPassword,
      suffixIcon: GestureDetector(
        onTap: () => ref.read(confirmObscurePasswordProvider.notifier).toggle(),
        child: !obscureProvider ? 
        SvgPicture.asset(AppAssets.icons.eyeGrey,).paddingDirectionalOnly(end: 30.w,)
        : Icon(Icons.visibility_off, color: AppColors.color.kGrey026,).paddingDirectionalOnly(end: 30.w,),
      ),
    );
  }
}