import 'package:flutter/material.dart';

import '../../../../../../core/constants/app_images.dart';

class WatermelonWidget extends StatelessWidget
{
  const WatermelonWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Image.asset(AppAssets.imgs.watermelon, fit: BoxFit.contain, height: double.infinity,),
    );
  }
}
