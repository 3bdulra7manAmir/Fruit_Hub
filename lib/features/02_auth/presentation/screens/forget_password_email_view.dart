import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/services/database/firebase/firebase_services/reset_password/action_code_settings.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../../../../core/widgets/form.dart';
import '../../../../core/widgets/snackbar.dart';
import '../../domain/usecases/forget_password_usecase.dart';
import '../controller/forget_password/resend_email_controller.dart';
import '../widget/forget_password_email/email_field.dart';
import '../widget/forget_password_email/forget_password_button.dart';
import '../widget/forget_password_email/forget_password_title.dart';
import '../widget/password_recovery_email/resend_code.dart';

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
            Sizes.s24.verticalSpace,
            Consumer(
              builder: (_, ref, _)
              {
                final bool isResend = ref.watch(resendEmailProvider);
                return isResend ? ResendCodeBody(email: emailController.text,) 
                : const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ResendCodeBody extends ConsumerWidget
{
  const ResendCodeBody({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return GestureDetector(
      onTap: () async
      {
        try
        {
          await ref.read(sendResetPasswordEmailProvider).call(email, FirebaseActionCodeHelper.resetPasswordSettings);
        } 
        catch (e)
        {
          if (!context.mounted) return;
          CustomSnackBar().show(context, '');
        }
      },
      child: const ResendCodeWidget()
    );
  }
}
