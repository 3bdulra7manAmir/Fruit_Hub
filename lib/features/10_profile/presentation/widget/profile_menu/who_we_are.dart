import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/constants/app_images.dart';
import 'menu_options.dart';

class WhoWeAreTextWidget extends StatelessWidget
{
  const WhoWeAreTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return ProfileOptions(
      leading: AppAssets.icons.whoWeAre,
      title: S.current.aboutUs,
      onTap: ()
      {
        log('Who We are has been Pressed...');
        AppRouter.router.pushNamed(AppRoutes.whoWeAre);
      },
    );
  }
}