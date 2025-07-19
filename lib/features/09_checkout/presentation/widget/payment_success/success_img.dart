import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_images.dart';

class SuccessImgWidget extends StatelessWidget
{
  const SuccessImgWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SvgPicture.asset(AppAssets.icons.successGreen);
  }
}