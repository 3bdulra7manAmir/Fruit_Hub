import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../config/i18n/generated/l10n.dart';
import '../../../config/theme/color_manager/colors.dart';
import '../../core/constants/app_images.dart';
import '../../core/constants/app_styles.dart';
import '../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../core/widgets/appbar/user_appbar/user_appbar_body.dart';
import '../../core/widgets/navbar/nav_bar_model.dart';
import '../../core/widgets/navbar/nav_bar_widget.dart';



class MainScaffold extends StatelessWidget
{
  MainScaffold({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index)
  {
    navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);
  }

  final List<NavBarItemModel> items = [
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

  @override
  Widget build(BuildContext context)
  {
    final currentIndex = navigationShell.currentIndex;
    return Scaffold(
      appBar: _buildAppBar(currentIndex),
      body: navigationShell,
      bottomNavigationBar: CustomNavBar(
        itemPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
        textStyle: AppStyles.light(fontColor: AppColors.color.kGreen001),
        currentIndex: currentIndex,
        items: items,
        onTap: _goBranch,
      )
    );
  }

  PreferredSizeWidget? _buildAppBar(int index)
  {
    switch (index)
    {
      case 0:
        return const UserAppBar();
      case 1:
        return CustomAppBar(title: S.current.products, isNotifications: true, isCustomBack: false,);
      case 2:
        return CustomAppBar(title: S.current.cart, isCustomBack: false,);
      case 3:
        return CustomAppBar(title: S.current.myAccount, isCustomBack: false,);
      default:
        return null;
    }
  }

}