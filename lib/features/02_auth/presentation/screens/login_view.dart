import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../../../../core/widgets/form.dart';
import '../widget/login/did_forget_password.dart';
import '../widget/login/dont_have_account.dart';
import '../widget/login/login_button.dart';
import '../widget/login/login_email_field.dart';
import '../widget/login/login_password_field.dart';
import '../widget/login/or_widget.dart';
import '../widget/login/other_login_options.dart';

class Login extends StatelessWidget
{
  Login({super.key});
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController(text: 'shadowcompany6270@gmail.com');
  final TextEditingController passwordController = TextEditingController(text: 'Poilkjmnb12V1#');

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(title: S.current.login,),
      body: CustomForm(
        formKey: loginFormKey,
        formBody: CustomSingleChild(
          children:
          [
            Sizes.s24.verticalSpace,
            LoginEmailWidget(emailController: emailController,),
            Sizes.s16.verticalSpace,
            LoginPasswordWidget(passwordController: passwordController,),
            Sizes.s16.verticalSpace,
            const DidForgetPasswordWidget(),
            Sizes.s33.verticalSpace,
            LoginButtonWidget(formKey: loginFormKey, emailController: emailController, passwordController: passwordController,),
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
    );
  }
}
