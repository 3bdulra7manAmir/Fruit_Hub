import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  final Widget Function(BuildContext, String, DownloadProgress)? progressIndicatorBuilder;

  bool get _isSvg => imgUrl.toLowerCase().contains('.svg');

  @override
  Widget build(BuildContext context)
  {
    if (_isSvg)
    {
      return SvgPicture.network(
        imgUrl, fit: fit ?? BoxFit.cover,
        width: width, height: height,
        placeholderBuilder: placeholder != null
        ? (context) => placeholder!(context, imgUrl) : null,
      );
    }

    return CachedNetworkImage(
      imageUrl: imgUrl, fit: fit ?? BoxFit.cover,
      alignment: alignment ?? Alignment.center,
      height: height, width: width,
      errorWidget: errorWidget,
      placeholder: placeholder,
      placeholderFadeInDuration: placeholderFadeInDuration,
      progressIndicatorBuilder: progressIndicatorBuilder,
    );
  }
}
