import 'package:e_commerce_app/core/widgets/buttons/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../widget/personal_info/change_password_text.dart';
import '../widget/personal_info/confirm_password_field.dart';
import '../widget/personal_info/current_password_field.dart';
import '../widget/personal_info/edit_email.dart';
import '../widget/personal_info/edit_full_name.dart';
import '../widget/personal_info/new_password_field.dart';
import '../widget/personal_info/personal_info_text.dart';

class PersonalInfo extends StatelessWidget
{
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: "الملف الشخصي",),
      body: CustomSingleChild(
        children:
        [
          Sizes.s24.verticalSpace,
          PersonalInfoTextWidget(),
          Sizes.s8.verticalSpace,
          EditFullNameFieldWidget(),
          Sizes.s8.verticalSpace,
          EditEmailFieldWidget(),
          Sizes.s16.verticalSpace,
          ChangePasswordTextWidget(),
          Sizes.s8.verticalSpace,
          CurrentPasswordFieldWidget(),
          Sizes.s8.verticalSpace,
          NewPasswordFieldWidget(),
          Sizes.s8.verticalSpace,
          ConfirmPasswordFieldWidget(),
          Sizes.s74.verticalSpace,
          CustomButton(onPressed: (){}, text: "حفظ التغييرات"),
          Sizes.s16.verticalSpace,
        ]
      ),
    );
  }
}

