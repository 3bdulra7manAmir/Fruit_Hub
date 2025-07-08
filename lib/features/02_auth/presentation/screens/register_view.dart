import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/custom_form.dart';
import '../widget/auth_appbar.dart';
import '../../../../core/widgets/custom_column.dart';
import '../widget/register/already_has_an_account.dart';
import '../widget/register/email_field.dart';
import '../widget/register/fullname_field.dart';
import '../widget/register/password_field.dart';
import '../widget/register/register_button.dart';
import '../widget/register/register_terms.dart';

class Register extends StatelessWidget
{
  Register({super.key});
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AuthAppBar(barTitle: "حساب جديد",),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: AppForm(
          formKey: registerFormKey,
          formBody: CustomColumn(
            children:
            [
              Sizes.size24.verticalSpace,
              RegisterFullNameWidget(),
              Sizes.size16.verticalSpace,
              RegisterEmailWidget(),
              Sizes.size16.verticalSpace,
              RegisterPasswordWidget(),
              Sizes.size16.verticalSpace,
              RegisterTermsWidget(),
              Sizes.size30.verticalSpace,
              RegisterButtonWidget(formKey: registerFormKey,),
              Sizes.size26.verticalSpace,
              AlreadyHasAnAccountWidget(),
              Sizes.size16.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}