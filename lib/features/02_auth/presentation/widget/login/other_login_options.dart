import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/extensions/iterator.dart';
import '../../../../../core/helpers/functions/platform.dart';
import '../../../../../core/services/database/firebase/firebase_sign_in_with_google.dart';
import '../../../../../core/widgets/snackbar.dart';

class OtherOptionsWidget extends StatelessWidget {
  const OtherOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...[
          GestureDetector(
            onTap: () async {log('Google'); 
              if (await FirebaseGoogleSignIn.instance.signInWithGoogle() != null) {
                await AppRouter.router.pushReplacementNamed(AppRoutes.home);
              }
              else {
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


class OtherOptionCardWidget extends StatelessWidget {
  const OtherOptionCardWidget({
    super.key,
    required this.text,
    required this.logo,
    this.isColored,
    this.height,
    this.width,
  });

  final double? height;
  final double? width;
  final String text;
  final String logo;
  final bool? isColored;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 56.h,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: AppColors.color.kWhite005,
        borderRadius: AppRadiuses.circular.medium,
        border: Border.all(color: AppColors.color.kGrey028),
      ),
      child: Row(
        children:
        [
          Sizes.s18.horizontalSpace,
          SvgPicture.asset(logo, colorFilter: (isColored ?? false)
            ? ColorFilter.mode(AppColors.color.kBlack001, BlendMode.srcIn) : null,
          ),
          Sizes.s53.horizontalSpace,
          Text(text, style: AppStyles.bold(fontColor: AppColors.color.kBlack001,
              fontWeight: AppFontWeights.semiBoldWeight,
            ),
          ),
        ],
      ),
    );
  }
}
