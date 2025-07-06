import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/app_form.dart';
import '../../../../core/widgets/appbars/auth_appbar.dart';
import '../widget/new_password/first_password_field.dart';
import '../widget/new_password/new_password_button.dart';
import '../widget/new_password/new_password_title.dart';
import '../widget/new_password/second_password_field.dart';

class NewPassword extends StatelessWidget
{
  NewPassword({super.key});
  final GlobalKey<FormState> newPasswordFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AuthAppBar(barTitle: "كلمة مرور جديدة"),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: AppForm(
          formKey: newPasswordFormKey,
          formBody: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Sizes.size24.verticalSpace,
              NewPasswordTitleWidget(),
              Sizes.size34.verticalSpace,
              FirstPasswordFieldWidget(),
              Sizes.size24.verticalSpace,
              SecondPasswordFieldWidget(),
              Sizes.size24.verticalSpace,
              NewPasswordButtonWidget(formKey: newPasswordFormKey,),
              Sizes.size16.verticalSpace,
            ],
          ).marginSymmetric(horizontal: 16.w),
        ),
      ),
    );
  }
}