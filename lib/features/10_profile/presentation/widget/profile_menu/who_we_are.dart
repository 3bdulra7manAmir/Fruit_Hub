import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/utils/logger/app_logger.dart';
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
        AppLogger.debug('Who We are has been Pressed...');
        AppRouter.router.pushNamed(AppRoutes.whoWeAre);
      },
    );
  }
}