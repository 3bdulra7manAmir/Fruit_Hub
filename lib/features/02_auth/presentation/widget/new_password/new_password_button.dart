import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/services/database/firebase/firebase_services/reset_password/reset_password_handler.dart';
import '../../../../../core/utils/logger/app_logger.dart';
import '../../../../../core/widgets/buttons/button.dart';
import '../../../../../core/widgets/snackbar.dart';
import '../../../domain/usecases/confirm_reset_password_usecase.dart';
import 'password_changed_dialog.dart';

class NewPasswordButtonWidget extends ConsumerWidget
{
  const NewPasswordButtonWidget({
    super.key,
    required this.formKey,
    required this.passwordController,
    required this.password2Controller,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController passwordController;
  final TextEditingController password2Controller;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final resetCode = ref.watch(resetCodeProvider);
    return CustomButton(text: S.current.createNewPassword,
      onPressed: () async => onRestPressed(ref, context, resetCode),
    );
  }

  void onRestPressed(WidgetRef ref, BuildContext context, resetCode) async
  {
    if (!formKey.currentState!.validate())
    {AppLogger.debug('InValid Creation...');} 
    else
    {
      if (passwordController.text == password2Controller.text)
      {
        if (resetCode != null)
        {
          try
          {
            await ref.read(confirmResetPasswordProvider).call(resetCode, passwordController.text);
            if (!context.mounted) return;
            showSuccessDialog(context, S.current.passwordChangedSuccessfully);
            ref.read(resetCodeProvider.notifier).clear();
            await AppRouter.router.pushReplacementNamed(AppRoutes.login);
          } 
          catch (e)
          {
            if (!context.mounted) return;
            CustomSnackBar().show(context, 'Error: $e');
          }
        } 
        else
        {
          CustomSnackBar().show(context, 'Invalid or missing reset code');
        }
      } 
      else
      {
        passwordController.clear();
        password2Controller.clear();
        CustomSnackBar().show(context, S.current.passwordsDontMatchFunny);
      }
    }
  }
}
