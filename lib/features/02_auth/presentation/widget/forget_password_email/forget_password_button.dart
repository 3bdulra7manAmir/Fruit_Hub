import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../core/services/database/firebase/firebase_services/firebase_auth.dart';
import '../../../../../core/services/database/firebase/firebase_services/reset_password/action_code_settings.dart';
import '../../../../../core/utils/logger/app_logger.dart';
import '../../../../../core/widgets/buttons/button.dart';
import '../../../domain/usecases/forget_password_usecase.dart';
import '../../controller/forget_password/resend_email_controller.dart';


class ForgetPasswordButtonWidget extends ConsumerWidget
{
  const ForgetPasswordButtonWidget({super.key, required this.formKey, required this.emailController});

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return CustomButton(
      onPressed: () async => forgetPasswordOnPressed(ref),
      text: S.current.forgotPassword,
    );
  }
  
  Future<void> forgetPasswordOnPressed(WidgetRef ref) async
  {
    if (!formKey.currentState!.validate())
    {
      AppLogger.debug('InValid ForgetPassword...');
      return;
    }

    final email = emailController.text.trim();
    AppLogger.debug('Valid ForgetPassword with email: $email');

    try
    {
      await FirebaseAuthService.instance.auth.sendPasswordResetEmail(
        email: email,actionCodeSettings: FirebaseActionCodeHelper.resetPasswordSettings,
      );

      await ref.read(sendResetPasswordEmailProvider).call(email,
        FirebaseActionCodeHelper.resetPasswordSettings,);

      ref.read(resendEmailProvider.notifier).toggle();
      AppLogger.debug('Password reset email sent');

    } 
    on FirebaseAuthException catch (e)
    {
      if (e.code == 'user-not-found')
      {
        AppLogger.error('هذا البريد غير مسجل عندنا');
      }
      else
      {
        AppLogger.error('حصل خطأ: ${e.message}');
      }
    }
    catch (e)
    {
      AppLogger.error('Error sending reset email: $e');
    }
  }

}


// Futur<void> forgetPasswordOnPressed(WidgetRef ref) async
//   {
//     if (!formKey.currentState!.validate())
//     {
//       AppLogger.debug('InValid ForgetPassword...');
//     }
//     else
//     {
//       AppLogger.debug('Valid ForgetPassword...');
//       final email = emailController.text;
//       try
//       {
//         await ref.read(sendResetPasswordEmailProvider).call(email, FirebaseActionCodeHelper.resetPasswordSettings);
//         ref.read(resendEmailProvider.notifier).toggle();
//         AppLogger.debug('Password reset email sent');
//       } 
//       catch (e)
//       {
//         AppLogger.error('Error sending reset email: $e');
//       }
//     }
//   }