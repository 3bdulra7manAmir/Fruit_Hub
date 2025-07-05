import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbars/auth_appbar.dart';
import '../widget/login/did_forget_password.dart';
import '../widget/login/dont_have_account.dart';
import '../widget/login/email_field.dart';
import '../widget/login/login_button.dart';
import '../widget/login/or.dart';
import '../widget/login/other_login_options.dart';
import '../widget/login/password_field.dart';

class Login extends StatelessWidget
{
  const Login({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AuthAppBar(barTitle: "تسجيل دخول"),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children:
          [
            Sizes.size24.verticalSpace,
            LoginEmailWidget(),
            Sizes.size16.verticalSpace,
            LoginPasswordWidget(),
            Sizes.size16.verticalSpace,
            DidForgetPasswordWidget(),
            Sizes.size33.verticalSpace,
            LoginButtonWidget(),
            Sizes.size33.verticalSpace,
            DontHaveAccountWidget(),
            Sizes.size33.verticalSpace,
            OrWidget(),
            Sizes.size16.verticalSpace,
            OtherOptionWidget(),
            Sizes.size16.verticalSpace,
          ],
        ).marginSymmetric(horizontal: 16.w),
      ),
    );
  }
}