import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_images.dart';

class FilterIconWidget extends StatelessWidget
{
  const FilterIconWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return SvgPicture.asset(
      AppAssets.icons.filterGrey, 
      width: 20.w, height: 20.h, fit: 
      BoxFit.scaleDown,
    );
  }
}