import 'package:flutter_svg/svg.dart';

import '../../../config/theme/color_manager/colors.dart';
import 'nav_bar_model.dart';

final List<NavBarItemModel> items =
  [
    NavBarItemModel(
      activeColor: AppColors.color.kGreen001,
      title: 'الرئيسية',
      activeIcon: SvgPicture.asset('assets/icons/NavBar/Home_active.svg'),
      inactiveIcon: SvgPicture.asset('assets/icons/NavBar/Home_not_active.svg'),
    ),
    NavBarItemModel(
      activeColor: AppColors.color.kGreen001,
      title: 'المنتجات',
      activeIcon: SvgPicture.asset('assets/icons/NavBar/Products_active.svg'),
      inactiveIcon: SvgPicture.asset('assets/icons/NavBar/Products_not_active.svg'),
    ),
    NavBarItemModel(
      activeColor: AppColors.color.kGreen001,
      title: 'سلة التسوق',
      activeIcon: SvgPicture.asset('assets/icons/NavBar/Cart_active.svg'),
      inactiveIcon: SvgPicture.asset('assets/icons/NavBar/Cart_not_active.svg'),
    ),
    NavBarItemModel(
      activeColor: AppColors.color.kGreen001,
      title: 'حسابي',
      activeIcon: SvgPicture.asset('assets/icons/NavBar/User_active.svg'),
      inactiveIcon: SvgPicture.asset('assets/icons/NavBar/User_not_active.svg'),
    ),
  ];