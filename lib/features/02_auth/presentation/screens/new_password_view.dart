import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../../../../core/widgets/form.dart';
import '../widget/new_password/first_password_field.dart';
import '../widget/new_password/new_password_button.dart';
import '../widget/new_password/new_password_title.dart';
import '../widget/new_password/second_password_field.dart';

class NewPassword extends StatelessWidget
{
  NewPassword({super.key});
  final GlobalKey<FormState> newPasswordFormKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController password2Controller = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(title: S.current.newPassword),
      body: CustomForm(
        formKey: newPasswordFormKey,
        formBody: CustomSingleChild(
          children:
          [
            Sizes.s24.verticalSpace,
            const NewPasswordTitleWidget(),
            Sizes.s34.verticalSpace,
            FirstPasswordFieldWidget(passwordController: passwordController,),
            Sizes.s24.verticalSpace,
            SecondPasswordFieldWidget(password2Controller: password2Controller,),
            Sizes.s24.verticalSpace,
            NewPasswordButtonWidget(formKey: newPasswordFormKey, passwordController: passwordController, password2Controller: password2Controller,),
            Sizes.s16.verticalSpace,
          ],
        ),
      ),
    );
  }
}
