import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_images.dart';

class OfferImgWidget extends StatelessWidget
{
  const OfferImgWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Image.asset(AppAssets.imgs.fruitCard, height: 158.h, fit: BoxFit.cover,);
  }
}