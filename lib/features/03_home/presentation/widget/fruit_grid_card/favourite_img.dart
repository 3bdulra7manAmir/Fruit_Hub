import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../controller/favourite_controller.dart';

class FavouriteWidget extends ConsumerWidget
{
  const FavouriteWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return GestureDetector(
      onTap: ()
      {log('Favourit Has been Pressed...'); ref.read(favouriteImgProvider.notifier).toggle();},
      child: SvgPicture.asset(ref.watch(favouriteIconProvider)),
    );
  }
}
