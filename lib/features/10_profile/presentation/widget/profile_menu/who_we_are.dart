import 'dart:developer';
import 'package:flutter/material.dart';

import 'menu_options.dart';

class WhoWeAreTextWidget extends StatelessWidget
{
  const WhoWeAreTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return ProfileOptions(
      leading: 'assets/icons/Profile/Info_Circle_Green.svg',
      title: 'من نحن',
      onTap: ()
      {
        log('Who We are has been Pressed...');
        //AppRouter.router.pushNamed(AppRoutes.);
      },
    );
  }
}