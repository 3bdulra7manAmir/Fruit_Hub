import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/extensions/padding.dart';
import '../../../../../core/services/validation/validation.dart';
import '../../../../../core/widgets/textform_field.dart';
import '../../controller/login/obscure_password_controller.dart';

class LoginPasswordWidget extends ConsumerWidget
{
  const LoginPasswordWidget({super.key, required this.passwordController});

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final obscureProvider = ref.watch(loginObscurePasswordProvider);
    return CustomTextFormField(
      keyboardType: TextInputType.visiblePassword,
      controller: passwordController,
      validator: (value) => AppValidation.passwordValidation(value),
      hintText: S.current.password,
      obscureText: obscureProvider,
      suffixIcon: GestureDetector(
        onTap: () => ref.read(loginObscurePasswordProvider.notifier).toggle(),
        child: !obscureProvider ? 
        SvgPicture.asset(AppAssets.icons.eyeGrey,).paddingDirectionalOnly(end: 30.w,)
        : Icon(Icons.visibility_off, color: AppColors.color.kGrey026,).paddingDirectionalOnly(end: 30.w,),
      ),
    );
  }
}