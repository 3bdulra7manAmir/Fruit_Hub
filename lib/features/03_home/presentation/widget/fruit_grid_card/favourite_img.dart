import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_images.dart';
import '../../controller/favourite_controller.dart';

class FavouriteWidget extends ConsumerWidget
{
  const FavouriteWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final isFavouritProvider = ref.watch(favouriteImgProvider);
    return GestureDetector(
      onTap: ()
      {
        log("Favourit Has been Pressed...");
        ref.read(favouriteImgProvider.notifier).toggle();
      },
      child: isFavouritProvider ? //ShadowCompany
      SvgPicture.asset(AppAssets.icons.hartBlack)
      : Image.asset(AppAssets.icons.hartFilledPNG),
    );
  }
}
