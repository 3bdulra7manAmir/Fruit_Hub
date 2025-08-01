import 'package:flutter_svg/svg.dart';

import '../../../config/i18n/generated/l10n.dart';
import '../../../config/theme/color_manager/colors.dart';
import '../../constants/app_images.dart';
import 'nav_bar_model.dart';

final List<NavBarItemModel> items =
  [
    NavBarItemModel(
      activeColor: AppColors.color.kGreen001,
      title: S.current.home,
      activeIcon: SvgPicture.asset(AppAssets.icons.home),
      inactiveIcon: SvgPicture.asset(AppAssets.icons.homeNotActive),
    ),
    NavBarItemModel(
      activeColor: AppColors.color.kGreen001,
      title: S.current.products,
      activeIcon: SvgPicture.asset(AppAssets.icons.products),
      inactiveIcon: SvgPicture.asset(AppAssets.icons.productsNotActive),
    ),
    NavBarItemModel(
      activeColor: AppColors.color.kGreen001,
      title: S.current.shoppingCart,
      activeIcon: SvgPicture.asset(AppAssets.icons.cart),
      inactiveIcon: SvgPicture.asset(AppAssets.icons.cartNotActive),
    ),
    NavBarItemModel(
      activeColor: AppColors.color.kGreen001,
      title: S.current.myAccount,
      activeIcon: SvgPicture.asset(AppAssets.icons.profile),
      inactiveIcon: SvgPicture.asset(AppAssets.icons.profileNotActive),
    ),
  ];