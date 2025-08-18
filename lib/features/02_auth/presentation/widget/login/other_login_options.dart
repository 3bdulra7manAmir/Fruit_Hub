import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/extensions/iterator.dart';
import '../../../../../core/services/database/firebase/firebase_operations/sign_in_with_google.dart';
import '../../../../../core/utils/functions/platform.dart';
import '../../../../../core/widgets/snackbar.dart';
import 'other_login_options_container.dart';

class OtherOptionsWidget extends StatelessWidget
{
  const OtherOptionsWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children:
      [
        ...[
          GestureDetector(
            onTap: () async {log('Google'); 
              if (await FirebaseGoogleSignIn.instance.signInWithGoogle() != null)
              {
                await AppRouter.router.pushReplacementNamed(AppRoutes.home);
              }
              else
              {
                if (!context.mounted) return;
                CustomSnackBar().show(context, 'Google Sign-In failed or canceled.');
              }
            },
            child: OtherOptionCardWidget(text: S.current.signInWithGoogle, logo: AppAssets.icons.google,),
          ),
          if (PlatformHelper.instance.isIOS())
          GestureDetector(
            onTap: () {log('Apple');},
            child: OtherOptionCardWidget(text: S.current.signInWithApple, logo: AppAssets.icons.apple, isColored: true,),
          ),
          GestureDetector(
            onTap: () {log('Facebook');},
            child: OtherOptionCardWidget(text: S.current.signInWithFacebook, logo: AppAssets.icons.facebook,),
          ),
        ].addSeparator(child: Sizes.s16.verticalSpace),
      ],
    );
  }
}


