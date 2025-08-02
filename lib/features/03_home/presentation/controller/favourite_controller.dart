import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../config/theme/theme_controller/theme_controller.dart';
import '../../../../../core/constants/app_images.dart';

part 'favourite_controller.g.dart';

@riverpod
class FavouriteImg extends _$FavouriteImg
{
  @override
  bool build()
  {
    const initialValue = false;
    log('Initial Favourit State: $initialValue');
    return initialValue;
  }

  void toggle()
  {
    state = !state;
    log('Favourit Toggled => $state');
  }
}

@riverpod
String favouriteIcon(Ref ref)
{
  final isFavourite = ref.watch(favouriteImgProvider);
  final themeMode = ref.watch(themeProvider);
  final isDark = themeMode == ThemeMode.dark;

  if (isDark)
  {
    return isFavourite ? AppAssets.icons.hartRedWhiteTheme : AppAssets.icons.hartGreyEmptyDarkTheme;
  }
  else
  {
    return isFavourite ? AppAssets.icons.hartRedWhiteTheme : AppAssets.icons.hartBlackEmptyWhite;
  }
}
