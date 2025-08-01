import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../../../../core/widgets/form.dart';
import '../widget/personal_info/change_password_text.dart';
import '../widget/personal_info/confirm_password_field.dart';
import '../widget/personal_info/current_password_field.dart';
import '../widget/personal_info/edit_email.dart';
import '../widget/personal_info/edit_full_name.dart';
import '../widget/personal_info/new_password_field.dart';
import '../widget/personal_info/personal_info_text.dart';
import '../widget/personal_info/save_edits_button.dart';

class PersonalInfo extends StatelessWidget
{
  PersonalInfo({super.key});

  final GlobalKey<FormState> personalInfoFormKey = GlobalKey<FormState>();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController currentPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(title: S.current.profile,),
      body: CustomForm(
        formKey: personalInfoFormKey,
        formBody: 
          CustomSingleChild(
          children:
          [
            Sizes.s24.verticalSpace,
            const PersonalInfoTextWidget(),
            Sizes.s8.verticalSpace,
            EditFullNameFieldWidget(fullNameController: fullNameController,),
            Sizes.s8.verticalSpace,
            EditEmailFieldWidget(emailController: emailController,),
            Sizes.s16.verticalSpace,
            const ChangePasswordTextWidget(),
            Sizes.s8.verticalSpace,
            CurrentPasswordFieldWidget(currentPasswordController: currentPasswordController,),
            Sizes.s8.verticalSpace,
            NewPasswordFieldWidget(newPasswordController: newPasswordController,),
            Sizes.s8.verticalSpace,
            ConfirmPasswordFieldWidget(confirmPasswordController: confirmPasswordController,),
            Sizes.s74.verticalSpace,
            SaveEditsButtonWidget(
              formKey: personalInfoFormKey, 
              fullNameController: fullNameController, 
              emailController: emailController, 
              currentPasswordController: currentPasswordController, 
              newPasswordController: newPasswordController, 
              confirmPasswordController: confirmPasswordController,
            ),
            Sizes.s16.verticalSpace,
          ]
        ),
      ),
    );
  }
}
