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
import '../../../../02_auth/domain/entity/register_entity.dart';
import '../../../../02_auth/domain/usecases/register_usecase.dart';
import '../../controller/register/checkbox_controller.dart';

class RegisterButtonWidget extends ConsumerWidget {
  const RegisterButtonWidget({
    super.key,
    required this.formKey,
    required this.fullNameController,
    required this.emailController,
    required this.passwordController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController fullNameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return CustomButton(text: S.current.createNewAccount, onPressed: () => onPressed(context, ref),);
  }

  void onPressed(BuildContext context, WidgetRef ref) async
  {
    if (formKey.currentState!.validate() && ref.read(registerCheckboxProvider) == true)
    {
      final fullName = fullNameController.text.trim();
      final email = emailController.text.trim().toLowerCase();
      final password = passwordController.text.trim();
      log('Trying to register with: $fullName, $email');

      final registerEntity = RegisterEntity(
        fullName: fullName, email: email, password: password,
      );
      try
      {
        await loadingDialog(context);
        await ref.read(registerUsecaseProvider(registerEntity).future);
        if (context.mounted)
        {
          AppRouter.router.pop(); // remove loading
          fullNameController.clear();
          emailController.clear();
          passwordController.clear();
          await AppRouter.router.pushReplacementNamed(AppRoutes.login);
        }
      } 
      catch (error, stack)
      {
        AppRouter.router.pop(); // remove loading
        log('Register error: $error \n\n $stack');
        if (!context.mounted) return;
        CustomSnackBar().show(context, StatusCodes().registerAuth.getMessageFromException(error));
      }
    } 
    if(formKey.currentState!.validate() && ref.read(registerCheckboxProvider) == false)
    {
      if (!context.mounted) return;
      CustomSnackBar().show(context, S.current.mustAcceptTerms);
    }
    if(!formKey.currentState!.validate() && ref.read(registerCheckboxProvider) == true)
    {
      if (!context.mounted) return;
      CustomSnackBar().show(context, S.current.registrationFieldsRequired);
    }
    if(!formKey.currentState!.validate() && ref.read(registerCheckboxProvider) == false)
    {
      if (!context.mounted) return;
      CustomSnackBar().show(context, S.current.fillFieldsAndAcceptTerms);
    }
    else
    {
      log('Invalid register input');
    }
  }
}
