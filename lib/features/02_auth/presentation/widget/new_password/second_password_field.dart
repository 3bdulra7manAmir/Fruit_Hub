import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:e_commerce_app/core/extensions/widget_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_images.dart';
import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/textform_field.dart';
import '../../controller/new_password_view/second_obscure_controller.dart';

class SecondPasswordFieldWidget extends ConsumerWidget
{
  const SecondPasswordFieldWidget({super.key});

  static final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final obscureProvider = ref.watch(secondObscurePasswordProvider);
    return CustomTextFormField(
      controller: passwordController,
      keyboardType: TextInputType.visiblePassword,
      validator: (value) => AppValidation.passwordValidation(value, context),
      hintText: "أعد إدخال كلمة المرور",
      obscureText: !obscureProvider,
      suffixIcon: GestureDetector(
        onTap: ()
        {
          ref.read(secondObscurePasswordProvider.notifier).toggle();
        },
        child: obscureProvider ? 
        SvgPicture.asset(AppAssets.icons.eyeGrey,).paddingDirectionalOnly(end: 30.w,)
        : const Icon(Icons.visibility_off, color: Color(0xffC9CECF),).paddingDirectionalOnly(end: 30.w,),
      ),
    );
  }
}