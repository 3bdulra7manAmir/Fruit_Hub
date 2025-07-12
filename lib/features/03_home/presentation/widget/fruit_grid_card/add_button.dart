import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_images.dart';

class AddButtonWidget extends StatelessWidget
{
  const AddButtonWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: ()
      {log("Add has been Pressed...");},
      child: SvgPicture.asset(AppAssets.icons.addGreen),
    );
  }
}
