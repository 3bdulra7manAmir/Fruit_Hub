import 'package:e_commerce_app/features/02_auth/presentation/widget/forget_password_phone/forget_password_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/custom_form.dart';
import '../../../../core/widgets/app_appbar.dart';
import '../../../../core/widgets/custom_column.dart';
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
      appBar: CustomAppBar(barTitle: "نسيان كلمة المرور"),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: AppForm(
          formKey: forgetPasswordPhoneFormKey,
          formBody: CustomColumn(
            children:
            [
              Sizes.s24.verticalSpace,
              ForgetPasswordTitleWidget(),
              Sizes.s30.verticalSpace,
              PhoneNumberFormFieldWidget(),
              Sizes.s30.verticalSpace,
              ForgetPasswordButtonWidget(formKey: forgetPasswordPhoneFormKey,),
              Sizes.s16.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}