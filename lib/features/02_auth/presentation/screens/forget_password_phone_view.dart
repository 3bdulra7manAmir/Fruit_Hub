
import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:e_commerce_app/features/02_auth/presentation/widget/forget_password_phone/forget_password_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/app_form.dart';
import '../../../../core/widgets/appbars/auth_appbar.dart';
import '../widget/forget_password_phone/forget_password_button.dart';
import '../widget/forget_password_phone/phone_number_form_field.dart';

class ForgetPasswordPhone extends StatelessWidget
{
  ForgetPasswordPhone({super.key});
  final GlobalKey<FormState> forgetPasswordPhoneFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AuthAppBar(barTitle: "نسيان كلمة المرور"),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: AppForm(
          formKey: forgetPasswordPhoneFormKey,
          formBody: Column(
            children:
            [
              Sizes.size24.verticalSpace,
              ForgetPasswordTitleWidget(),
              Sizes.size30.verticalSpace,
              PhoneNumberFormFieldWidget(),
              Sizes.size30.verticalSpace,
              ForgetPasswordButton(formKey: forgetPasswordPhoneFormKey,),
              Sizes.size16.verticalSpace,
            ],
          ).marginSymmetric(horizontal: 16.w),
        ),
      ),
    );
  }
}