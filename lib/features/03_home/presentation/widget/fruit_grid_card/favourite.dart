import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_images.dart';

class FavouriteWidget extends StatelessWidget
{
  const FavouriteWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: ()
      {log("Favourit Has been Pressed...");},
      child: SvgPicture.asset(AppAssets.icons.hartBlack),
    );
  }
}
