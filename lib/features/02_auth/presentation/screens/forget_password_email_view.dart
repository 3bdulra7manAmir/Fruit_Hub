import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../../../../core/widgets/form.dart';
import '../widget/forget_password_email/email_field.dart';
import '../widget/forget_password_email/forget_password_button.dart';
import '../widget/forget_password_email/forget_password_title.dart';

class ForgetPasswordEmail extends StatelessWidget
{
  ForgetPasswordEmail({super.key});

  final GlobalKey<FormState> forgetPasswordEmailFormKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(title: S.current.forgotPassword),
      body: CustomForm(
        formKey: forgetPasswordEmailFormKey,
        formBody: CustomSingleChild(
          children:
          [
            Sizes.s24.verticalSpace,
            const ForgetPasswordTitleWidget(),
            Sizes.s30.verticalSpace,
            ForgetPasswordEmailWidget(emailController: emailController,),
            Sizes.s30.verticalSpace,
            ForgetPasswordButtonWidget(formKey: forgetPasswordEmailFormKey, emailController: emailController,),
            Sizes.s16.verticalSpace,
          ],
        ),
      ),
    );
  }
}
