import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomCachedNetworkImg extends StatelessWidget
{
  const CustomCachedNetworkImg({
    super.key,
    required this.imgUrl,
    this.fit,
    this.alignment,
    this.height,
    this.width,
    this.errorWidget,
    this.placeholder,
    this.placeholderFadeInDuration,
    this.progressIndicatorBuilder,
  });

  final String imgUrl;
  final BoxFit? fit;
  final Alignment? alignment;
  final double? height;
  final double? width;
  final Widget Function(BuildContext, String, Object)? errorWidget;
  final Widget Function(BuildContext, String)? placeholder;
  final Duration? placeholderFadeInDuration;
  final Widget Function(BuildContext, String, DownloadProgress)?
  progressIndicatorBuilder;

  @override
  Widget build(BuildContext context)
  {
    return CachedNetworkImage(
      imageUrl: imgUrl,
      fit: fit ?? BoxFit.cover,
      alignment: alignment ?? Alignment.center,
      height: height,
      width: width,
      errorWidget: errorWidget,
      placeholder: placeholder,
      placeholderFadeInDuration: placeholderFadeInDuration,
      progressIndicatorBuilder: progressIndicatorBuilder,
    );
  }
}
