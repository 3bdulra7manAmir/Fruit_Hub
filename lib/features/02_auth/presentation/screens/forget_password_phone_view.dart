import 'package:e_commerce_app/features/02_auth/presentation/widget/forget_password_phone/forget_password_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/form.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../widget/forget_password_phone/forget_password_button.dart';
import '../widget/forget_password_phone/number_field.dart';

class ForgetPasswordPhone extends StatelessWidget
{
  ForgetPasswordPhone({super.key});
  final GlobalKey<FormState> forgetPasswordPhoneFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomAppBar(barTitle: "نسيان كلمة المرور"),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: AppForm(
          formKey: forgetPasswordPhoneFormKey,
          formBody: CustomColumn(
            children:
            [
              Sizes.s24.verticalSpace,
              const ForgetPasswordTitleWidget(),
              Sizes.s30.verticalSpace,
              const PhoneNumberWidget(),
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