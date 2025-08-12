import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/services/network/status_code.dart';
import '../../../../../core/widgets/buttons/button.dart';
import '../../../../../core/widgets/popers/loading_dialog.dart';
import '../../../../../core/widgets/snackbar.dart';
import '../../../../02_auth/domain/entity/login_entity.dart';
import '../../../../02_auth/domain/usecases/login_usecase.dart';

class LoginButtonWidget extends ConsumerWidget
{
  const LoginButtonWidget({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return CustomButton(text: S.current.login, onPressed: () => onPressed(context, ref),);
  }

  void onPressed(BuildContext context, WidgetRef ref) async
  {
    if (formKey.currentState!.validate())
    {
      final email = emailController.text.trim();
      final password = passwordController.text.trim();
      log('Trying to login with: $email');

      final loginEntity = LoginEntity(email: email, password: password);
      try
      {
        await loadingDialog(context);
        await ref.read(loginUsecaseProvider(loginEntity).future);
        if (context.mounted)
        {
          AppRouter.router.pop(); // remove loading
          emailController.clear();
          passwordController.clear();
          await AppRouter.router.pushReplacementNamed(AppRoutes.home);
        }
      }
      catch (error, stack)
      {
        AppRouter.router.pop(); // remove loading
        log('Login error: $error \n\n $stack');
        if (!context.mounted) return;
        CustomSnackBar().show(context, StatusCodes().loginAuth.getMessageFromException(error));
      }
    }
    else
    {
      log('Invalid login input');
    }
  }
}
