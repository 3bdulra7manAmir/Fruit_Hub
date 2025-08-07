import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../../../../core/widgets/form.dart';
import '../widget/register/already_has_an_account.dart';
import '../widget/register/fullname_field.dart';
import '../widget/register/register_button.dart';
import '../widget/register/register_email_field.dart';
import '../widget/register/register_password_field.dart';
import '../widget/register/register_terms.dart';

class Register extends StatelessWidget
{
  Register({super.key});
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(title: S.current.newAccount,),
      body: CustomForm(
        formKey: registerFormKey,
        formBody: CustomSingleChild(
          children:
          [
            Sizes.s24.verticalSpace,
            RegisterFullNameWidget(fullNameController: fullNameController,),
            Sizes.s16.verticalSpace,
            RegisterEmailWidget(emailController: emailController,),
            Sizes.s16.verticalSpace,
            RegisterPasswordWidget(passwordController: passwordController,),
            Sizes.s16.verticalSpace,
            const RegisterTermsWidget(),
            Sizes.s30.verticalSpace,
            RegisterButtonWidget(formKey: registerFormKey, fullNameController: fullNameController, emailController: emailController, passwordController: passwordController,),
            Sizes.s26.verticalSpace,
            const AlreadyHasAnAccountWidget(),
            Sizes.s16.verticalSpace,
          ],
        ),
      ),
    );
  }
}