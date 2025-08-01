import 'package:flutter/material.dart';

import '../../constants/app_images.dart';
import '../../extensions/string.dart';

abstract class IdentityWidgets
{
  IdentityWidgets._();

  static String arrowDirection(BuildContext context)
  {
    return AppAssets.icons.leftBlackArrow.localized(context,
      ar: AppAssets.icons.leftBlackArrow,
      en: AppAssets.icons.rightBlackArrow,
    );
  }
}
