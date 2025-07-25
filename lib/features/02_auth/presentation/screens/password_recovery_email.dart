import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/router/app_router.dart';
import '../../../../config/router/app_routes.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../../../../core/widgets/form.dart';
import '../widget/password_recovery_email/phone_recovery_title.dart';
import '../widget/password_recovery_email/recovery_otp_field.dart';
import '../widget/password_recovery_email/resend_code.dart';

class PasswordRecoveryEmail extends StatelessWidget
{
  PasswordRecoveryEmail({super.key});
  final GlobalKey<FormState> passwordRecoveryFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomAppBar(title: 'التحقق من الرمز',),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: CustomForm(
          formKey: passwordRecoveryFormKey,
          formBody: CustomColumn(
            children:
            [
              Sizes.s24.verticalSpace,
              const PhoneRecoveryTitleWidget(),
              Sizes.s29.verticalSpace,
              const RecoveryOtpFieldWidget(),
              Sizes.s29.verticalSpace,
              GestureDetector(
                onTap: ()
                {
                  log('ReSend Code...');
                  AppRouter.router.pushNamed(AppRoutes.newPassword);
                },
                child: const ResendCodeWidget()
              ),
            ],
          ),
        ),
      ),
    );
  }
}