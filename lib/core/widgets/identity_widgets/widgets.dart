import 'package:flutter/material.dart';

import '../../constants/app_images.dart';
import '../../extensions/theme.dart';

abstract class WidgetFilpper
{
  WidgetFilpper._();

  // Menu Options Arrow Directions for Localization...
  static String menuOptions(BuildContext context)
  {
    return AppAssets.icons.leftBlackArrow.localized(context,
      ar: AppAssets.icons.leftBlackArrow,
      en: AppAssets.icons.rightBlackArrow,
    );
  }

  // Menu Options Arrow Directions for Localization...
  static String appBarBack(BuildContext context)
  {
    return AppAssets.icons.rightBlackArrow.localized(context, 
      ar: AppAssets.icons.rightBlackArrow, 
      en: AppAssets.icons.leftBlackArrow
    );
  }
  
  // Menu Options Arrow Directions for Localization...
  static String crossColor(BuildContext context)
  {
    return AppAssets.icons.crossWhite.darkOrLight(context, 
    dark: AppAssets.icons.crossBlack, 
    light: AppAssets.icons.crossWhite);
  }

}
