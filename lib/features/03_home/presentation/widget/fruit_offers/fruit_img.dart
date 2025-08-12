import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/cached_network_img.dart';

class OfferImgWidget extends StatelessWidget
{
  const OfferImgWidget({super.key, required this.imgUrl});

  final String imgUrl;

  @override
  Widget build(BuildContext context)
  {
    return CustomCachedNetworkImg(imgUrl: imgUrl, height: 158.h, width: 342.w, fit: BoxFit.cover,);
  }
}