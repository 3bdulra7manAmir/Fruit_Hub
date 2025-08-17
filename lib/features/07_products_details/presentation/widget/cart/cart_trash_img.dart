import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_images.dart';

class TrashImgWidget extends StatelessWidget
{
  const TrashImgWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return SvgPicture.asset(AppAssets.icons.trash);
  }
}
