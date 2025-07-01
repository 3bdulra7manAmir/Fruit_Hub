import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/app_images.dart';


class Splash extends StatelessWidget
{
  const Splash({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Column(
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