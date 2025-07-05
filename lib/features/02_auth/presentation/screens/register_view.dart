import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbars/auth_appbar.dart';
import '../widget/register/already_has_an_account.dart';
import '../widget/register/email_field.dart';
import '../widget/register/fullname_field.dart';
import '../widget/register/password_field.dart';
import '../widget/register/register_button.dart';
import '../widget/register/register_terms.dart';

class Register extends StatelessWidget
{
  const Register({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AuthAppBar(barTitle: "حساب جديد",),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children:
          [
            Sizes.size24.verticalSpace,
            RegisterFullNameWidget(),
            Sizes.size16.verticalSpace,
            RegisterEmailWidget(),
            Sizes.size16.verticalSpace,
            RegisterPasswordWidget(),
            Sizes.size16.verticalSpace,
            RegisterTermsWidget(),
            Sizes.size30.verticalSpace,
            RegisterButton(),
            Sizes.size26.verticalSpace,
            AlreadyHasAnAccountWidget(),
            Sizes.size16.verticalSpace,
          ],
        ).marginSymmetric(horizontal: 16.w),
      ),
    );
  }
}