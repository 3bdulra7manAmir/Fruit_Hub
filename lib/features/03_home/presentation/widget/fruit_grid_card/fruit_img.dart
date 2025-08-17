import 'package:flutter/material.dart';

import '../../../../../core/widgets/cached_network_img.dart';


class FruitImgWidget extends StatelessWidget
{
  const FruitImgWidget({super.key, required this.imgUrl});
  final String imgUrl;

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: CustomCachedNetworkImg(
        imgUrl: imgUrl, fit: BoxFit.contain,
        height: double.infinity,
        errorWidget: (_, _, _) => const Icon(Icons.error),
      ),
    );
  }
}

