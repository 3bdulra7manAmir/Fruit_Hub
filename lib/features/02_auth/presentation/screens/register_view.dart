import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/form.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';
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
      appBar: const CustomAppBar(barTitle: "حساب جديد",),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: AppForm(
          formKey: registerFormKey,
          formBody: CustomColumn(
            children:
            [
              Sizes.s24.verticalSpace,
              const RegisterFullNameWidget(),
              Sizes.s16.verticalSpace,
              const RegisterEmailWidget(),
              Sizes.s16.verticalSpace,
              const RegisterPasswordWidget(),
              Sizes.s16.verticalSpace,
              const RegisterTermsWidget(),
              Sizes.s30.verticalSpace,
              RegisterButtonWidget(formKey: registerFormKey,),
              Sizes.s26.verticalSpace,
              const AlreadyHasAnAccountWidget(),
              Sizes.s16.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}