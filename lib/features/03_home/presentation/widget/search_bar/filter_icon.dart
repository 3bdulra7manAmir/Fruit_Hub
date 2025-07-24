import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_images.dart';

class FilterIconWidget extends StatelessWidget
{
  const FilterIconWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: ()
      {log('Filter Settings has been Pressed...');},
      child: Image.asset(AppAssets.icons.filterGreyPNG, width: 20.w, height: 20.h,)
    );
  }
}