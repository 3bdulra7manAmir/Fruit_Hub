import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class FruitImgWidget extends StatelessWidget
{
  const FruitImgWidget({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.contain,
        height: double.infinity,
        errorWidget: (_, _, _) => const Icon(Icons.error),
      ),
    );
  }
}

