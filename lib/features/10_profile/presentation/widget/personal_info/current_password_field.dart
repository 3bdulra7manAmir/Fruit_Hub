import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_images.dart';
import '../../../../../core/extensions/widget_padding.dart';
import '../../../../../core/widgets/textform_field.dart';

class CurrentPasswordFieldWidget extends StatelessWidget
{
  const CurrentPasswordFieldWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      hintText: 'كلمة المرور الحالي',
      suffixIcon: SvgPicture.asset(AppAssets.icons.eyeGrey,).paddingDirectionalOnly(end: 30.w,)
    );
  }
}