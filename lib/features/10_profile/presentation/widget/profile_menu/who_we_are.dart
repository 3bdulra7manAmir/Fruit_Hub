import 'dart:developer';
import 'package:flutter/material.dart';

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
      title: 'من نحن',
      onTap: ()
      {
        log('Who We are has been Pressed...');
        //AppRouter.router.pushNamed(AppRoutes.);
      },
    );
  }
}