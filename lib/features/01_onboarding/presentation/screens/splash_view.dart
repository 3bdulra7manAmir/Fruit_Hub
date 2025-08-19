import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/router/app_router.dart';
import '../../../../config/router/app_routes.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/services/database/keys/app_settings.dart';
import '../../../../core/services/database/shared_preferences/shared_pref_manager.dart';
import '../../../../core/utils/logger/app_logger.dart';


class Splash extends StatefulWidget
{
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash>
{
  @override
  void initState()
  {
    super.initState();
    tokenChecker();
  }

  void tokenChecker() async
  {
    
    if (SharedPrefManager().firstLaunch == 1) {
      await SharedPrefManager().setFirstLaunch(0);
      AppLogger.debug('${SharedPrefManager().firstLaunch.toString()}... First Launch');
      Future.delayed(const Duration(seconds: 2), () => AppRouter.router.pushReplacement(AppRoutes.dotIndicator),);
      return;
    }

    final token = AppSettingsDatabase.instance.token;
    if (token != null && token.isNotEmpty) {
      AppLogger.debug('$token... token');
      Future.delayed(const Duration(seconds: 2), () => AppRouter.router.pushReplacement(AppRoutes.home),);
    }

    else {
      AppLogger.debug('... ............');
      Future.delayed(const Duration(seconds: 2), () => AppRouter.router.pushReplacement(AppRoutes.login),);
    }
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:
        [
          Align(alignment: Alignment.topLeft, child: SvgPicture.asset(AppAssets.icons.treeLeaf,)),
          const Spacer(),
          SvgPicture.asset(AppAssets.icons.appLogo,),
          const Spacer(),
          SvgPicture.asset(AppAssets.icons.bubbles, fit: BoxFit.fitWidth,),
        ],
      ),
    );
  }
}