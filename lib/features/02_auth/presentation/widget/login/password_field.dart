import 'dart:developer';

import 'package:e_commerce_app/core/extensions/widget_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constants/app_images.dart';
import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/widgets/custom_textform_field.dart';

class LoginPasswordWidget extends StatelessWidget
{
  const LoginPasswordWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      validator: (value) => AppValidation.passwordValidation(value, context),
      hintText: "كلمة المرور",
      suffixIcon: GestureDetector(
        onTap: ()
        {
          log("Eye");
        },
        child: SvgPicture.asset(AppAssets.icons.eyeGrey,).paddingDirectionalOnly(end: 30.w,),
      ),
    );
  }
}