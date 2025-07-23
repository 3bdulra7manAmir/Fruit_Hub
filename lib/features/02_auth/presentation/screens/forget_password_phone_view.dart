import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/form.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../widget/forget_password_phone/forget_password_button.dart';
import '../widget/forget_password_phone/forget_password_title.dart';
import '../widget/forget_password_phone/number_field.dart';

class ForgetPasswordPhone extends StatelessWidget
{
  ForgetPasswordPhone({super.key});
  final GlobalKey<FormState> forgetPasswordPhoneFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: S.current.forgotPassword),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: CustomForm(
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