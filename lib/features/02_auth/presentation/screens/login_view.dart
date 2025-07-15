import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/form.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../widget/login/did_forget_password.dart';
import '../widget/login/dont_have_account.dart';
import '../widget/login/login_email_field.dart';
import '../widget/login/login_button.dart';
import '../widget/login/or_widget.dart';
import '../widget/login/other_login_options.dart';
import '../widget/login/login_password_field.dart';

class Login extends StatelessWidget
{
  Login({super.key});
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomAppBar(barTitle: "تسجيل دخول"),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: CustomForm(
          formKey: loginFormKey,
          formBody: CustomColumn(
            children:
            [
              Sizes.s24.verticalSpace,
              const LoginEmailWidget(),
              Sizes.s16.verticalSpace,
              const LoginPasswordWidget(),
              Sizes.s16.verticalSpace,
              const DidForgetPasswordWidget(),
              Sizes.s33.verticalSpace,
              LoginButtonWidget(formKey: loginFormKey,),
              Sizes.s33.verticalSpace,
              const DontHaveAccountWidget(),
              Sizes.s33.verticalSpace,
              const OrWidget(),
              Sizes.s16.verticalSpace,
              const OtherOptionsWidget(),
              Sizes.s16.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}