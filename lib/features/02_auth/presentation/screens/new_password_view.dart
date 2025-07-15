import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/form.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../widget/new_password/first_password_field.dart';
import '../widget/new_password/new_password_button.dart';
import '../widget/new_password/new_password_title.dart';
import '../widget/new_password/second_password_field.dart';

class NewPassword extends StatelessWidget
{
  NewPassword({super.key});
  final GlobalKey<FormState> newPasswordFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomAppBar(barTitle: "كلمة مرور جديدة"),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: CustomForm(
          formKey: newPasswordFormKey,
          formBody: CustomColumn(
            children:
            [
              Sizes.s24.verticalSpace,
              const NewPasswordTitleWidget(),
              Sizes.s34.verticalSpace,
              const FirstPasswordFieldWidget(),
              Sizes.s24.verticalSpace,
              const SecondPasswordFieldWidget(),
              Sizes.s24.verticalSpace,
              NewPasswordButtonWidget(formKey: newPasswordFormKey,),
              Sizes.s16.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}