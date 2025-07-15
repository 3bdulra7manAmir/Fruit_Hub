import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/router/app_router.dart';
import '../../../../config/router/app_routes.dart';
import '../../../../core/constants/app_images.dart';


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
    Future.delayed(const Duration(seconds: 2), () => AppRouter.router.pushReplacement(AppRoutes.dotIndicator),);
    super.initState();
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