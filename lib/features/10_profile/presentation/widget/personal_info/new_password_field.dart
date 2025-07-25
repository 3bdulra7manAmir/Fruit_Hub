import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/extensions/widget_padding.dart';
import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/textform_field.dart';
import '../../controller/personal_info/new_obscure_controller.dart';

class NewPasswordFieldWidget extends ConsumerWidget
{
  const NewPasswordFieldWidget({super.key,});

  static final TextEditingController newPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final obscureProvider = ref.watch(newObscurePasswordProvider);
    return CustomTextFormField(
      hintText: 'كلمة المرور الجديده',
      controller: newPasswordController,
      keyboardType: TextInputType.visiblePassword,
      validator: (value) => AppValidation.passwordValidation(value),
      suffixIcon: GestureDetector(
        onTap: () => ref.read(newObscurePasswordProvider.notifier).toggle(),
        child: !obscureProvider ? 
        SvgPicture.asset(AppAssets.icons.eyeGrey,).paddingDirectionalOnly(end: 30.w,)
        : Icon(Icons.visibility_off, color: AppColors.color.kGrey026,).paddingDirectionalOnly(end: 30.w,),
      ),
    );
  }
}