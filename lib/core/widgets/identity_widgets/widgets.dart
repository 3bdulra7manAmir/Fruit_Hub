import 'package:flutter/material.dart';

import '../../constants/app_images.dart';
import '../../extensions/theme.dart';

abstract class WidgetManager
{
  WidgetManager._();

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
  
  // Cart or Product Add Arrow Cross Color for theming...
  static String crossColor(BuildContext context)
  {
    return AppAssets.icons.crossWhite.darkOrLight(context, 
    dark: AppAssets.icons.crossBlack, 
    light: AppAssets.icons.crossWhite);
  }

}
