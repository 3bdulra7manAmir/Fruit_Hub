import 'dart:developer';
import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/router/app_router.dart';
import '../../../../config/router/app_routes.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/app_form.dart';
import '../../../../core/widgets/appbars/auth_appbar.dart';
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
      appBar: AuthAppBar(barTitle: "التحقق من الرمز",),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: AppForm(
          formKey: passwordRecoveryFormKey,
          formBody: Column(
            children:
            [
              Sizes.size24.verticalSpace,
              PhoneRecoveryTitleWidget(),
              Sizes.size29.verticalSpace,
              RecoveryOtpFieldWidget(),
              Sizes.size29.verticalSpace,
              GestureDetector(
                onTap: ()
                {
                  log("ReSend Code...");
                  AppRouter.router.pushNamed(AppRoutes.newPassword);
                },
                child: ResendCodeWidget()
              ),
            ],
          ).marginSymmetric(horizontal: 16.w),
        ),
      ),
    );
  }
}