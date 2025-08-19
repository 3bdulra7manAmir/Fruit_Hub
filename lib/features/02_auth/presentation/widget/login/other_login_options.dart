import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/extensions/iterator.dart';
import '../../../../../core/utils/functions/platform.dart';
import '../../../../../core/utils/logger/app_logger.dart';
import '../../../../../core/widgets/popers/loading_dialog.dart';
import '../../../../../core/widgets/snackbar.dart';
import '../../../domain/usecases/login_with_google_usecase.dart';
import 'other_login_options_container.dart';

class OtherOptionsWidget extends ConsumerWidget
{
  const OtherOptionsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Column(
      children: [
        ...[
          GestureDetector(
            onTap: () => _googleSignIn(ref, context),
            child: OtherOptionCardWidget(text: S.current.signInWithGoogle, logo: AppAssets.icons.google,),
          ),
          if (PlatformHelper.instance.isIOS())
            GestureDetector(
              onTap: () => AppLogger.info('Apple'),
              child: OtherOptionCardWidget(text: S.current.signInWithApple, logo: AppAssets.icons.apple, isColored: true,),
            ),
          GestureDetector(
            onTap: () => AppLogger.info('Facebook'),
            child: OtherOptionCardWidget(text: S.current.signInWithFacebook, logo: AppAssets.icons.facebook,),
          ),
        ].addSeparator(child: Sizes.s16.verticalSpace),
      ],
    );
  }

  Future<void> _googleSignIn(WidgetRef ref, BuildContext context) async
  {
    AppLogger.info('Google Sign-In clicked');
    try
    {
      await loadingDialog(context);
      final entity = await ref.read(loginWithGoogleUsecaseProvider.future);
      AppLogger.info(
        '''User logged in => Email: ${entity.email},
        Name: ${entity.name},
        photoUrl: ${entity.photoUrl},
        ID: ${entity.id}''',
      );

      if (context.mounted) {
        AppRouter.router.pop(); // remove loading
        await AppRouter.router.pushReplacementNamed(AppRoutes.home);
      }
    } 
    catch (error, stack) 
    {
      AppRouter.router.pop(); // remove loading
      AppLogger.firebaseError('SignIn With Google failed', error, stackTrace: stack);
      if (!context.mounted) return;
      CustomSnackBar().show(context, 'Google Sign-In failed: $error');
    }
  }
}

