import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_images.dart';
import '../../../../../core/extensions/widget_padding.dart';
import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/textform_field.dart';

class CurrentPasswordFieldWidget extends StatelessWidget
{
  const CurrentPasswordFieldWidget({super.key,});

  static final TextEditingController currentController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      controller: currentController,
      keyboardType: TextInputType.visiblePassword,
      validator: (value) => AppValidation.passwordValidation(value, context),
      hintText: 'كلمة المرور الحالي',
      suffixIcon: SvgPicture.asset(AppAssets.icons.eyeGrey,).paddingDirectionalOnly(end: 30.w,)
    );
  }
}